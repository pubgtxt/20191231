package com.abtu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.abtu.entity.Admin;
import com.abtu.entity.Books;
import com.abtu.entity.BorrowBook;
import com.abtu.entity.OutTalk;
import com.abtu.entity.User;
import com.abtu.entity.UserMessage;
import com.abtu.entity.WantBook;
import com.abtu.entity.Words;
import com.abtu.util.Page;

@Mapper
@Repository("userDao")
public interface UserDao {
	

	//注册用户全部信息
	@Insert("insert into user values (#{id},#{name},#{pwd},#{idcard},#{part})")
	int addUser(User user);
	//通过id查找用户信息
	@Select("select * from user where id=#{id}")
	User selectOne(String id);
	//更新学生密码信息
	@Update("update user set pwd=#{pwd} where id=#{id}")
	int upUser(User user);
	//登录查询
	@Select("select * from user where id=#{arg0} and pwd=#{arg1}")
	User login(String id,String pwd);
	//用户信息查询
	@Select("select * from usermessage where id=#{id}")
	UserMessage selectUM(String id );
	//我的留言
	@Select("select * from words where userid=#{id}")
	List<Words> myWords(String id);
	//所有留言
	@Select("select * from words ")
	List<Words> allWords();
	//发表留言
	@Insert("insert into words(userid,username,words,time) values(#{userid},#{username},#{words},#{time})")
	int addWords(Words words);
	//删除留言
	@Delete("delete from words where id=#{id}")
	int delWords(String id);
	//注册的同时新增未完善信息
	@Insert("insert into usermessage values(#{id},#{age},#{sex},#{department},#{major})")
	int addUsermessage(UserMessage um);
	//完善信息
	@Update("update usermessage set age=#{age},sex=#{sex},department=#{department},major=#{major} where id=#{id}")
	int upUsermessage(UserMessage um);
	//发表公告
	@Insert("insert into outtalk(userid,username,title,words,time) values(#{userid},#{username},#{title},#{words},#{time})")
	int addOutTalk(OutTalk ot);
	//所有公告
	@Select("select * from outtalk ")
	List<OutTalk> allOutTalk();
	@Delete("delete from outtalk where id=#{id}")
	int delOutTalk(int id);
	//所有图书
	@Select("select * from books where bookname like concat('%',#{seach},'%') or anthor like concat('%',#{seach},'%')")
	List<Books> books(String seach);
	//查一本图书
	@Select("select * from books where id=#{id}")
	Books selectOneBook(String id);
	//借书1
	@Update("update books set num=#{arg0} where id=#{arg1}")
	int borrowBook(int num1,String id);
	//借书2
	@Insert("insert into borrowbook(isbn,bookid,bookname,userid,username,borrowtime,part) values(#{isbn},#{bookid},#{bookname},#{userid},#{username},#{borrowtime},#{part})")
	int addBorrowBook(BorrowBook bb);
	//上下架
	@Update("update books set states=#{arg0} where id=#{arg1}")
	int upBook(String states,String id);
	//搜索书
	@Select("select * from books where isbn like concat('%',#{seach},'%') or bookname like concat('%',#{seach},'%') or anthor like concat('%',#{seach},'%') or publish like concat('%',#{seach},'%')")
	List<Books> seachBooks(String seach);
	//我的图书
	@Select("select * from borrowbook where userid=#{userid}")
	List<BorrowBook> myborrow(String userid);
	//所有借阅图书
	@Select("select * from borrowbook ")
	List<BorrowBook> allborrow();
	//搜索借阅书
	@Select("select * from borrowbook where isbn like concat('%',#{seach},'%') or bookname like concat('%',#{seach},'%') or username like concat('%',#{seach},'%') or borrowtime like concat('%',#{seach},'%')")
	List<BorrowBook> seachBorrowBook(String seach);
	//搜索我的借阅书
	@Select("select * from borrowbook where (isbn like concat('%',#{arg0},'%') or bookname like concat('%',#{arg0},'%') or  borrowtime like concat('%',#{arg0},'%')) and userid=#{arg1}")
	List<BorrowBook> seachMyBorrowBook(String seach,String id);
	//删除已归还记录
	@Delete("delete from borrowbook where id=#{id}")
	int delBorrow(String id);
	//借出\拒绝出借
	@Update("update borrowbook set part=#{arg0} where id=#{arg1}")
	int updateBorrow(String states,String id);
	//归还
	@Update("update borrowbook set returntime=#{arg2},part=#{arg0} where id=#{arg1}")
	int returnBorrow(String states,String id,String returntime);
	//查是否存在
	@Select("select * from wantbook where bookname=#{bookname} and anthor=#{anthor} and userid=#{userid}")
	List<WantBook> selectIsHaveWant(WantBook wb);
	//添加加购信息
	@Insert("insert into wantbook(bookname,anthor,userid,username,part,time) values(#{bookname},#{anthor},#{userid},#{username},#{part},#{time})")
	int addWantBook(WantBook wb);
	//所有加购
	@Select("select * from wantbook ")
	List<WantBook> allWantBook();
	//加购条数
	@Select("select * from wantbook where bookname=#{bookname}")
	List<WantBook> countWantBook(String bookname);
	//我的加购
	@Select("select * from wantbook where userid=#{userid}")
	List<WantBook> myWantBook(String userid);
	//取消加购
	@Delete("delete from wantbook where id=#{id}")
	int delWantBook(String id);
	//搜索加购书
	@Select("select * from wantbook where anthor like concat('%',#{seach},'%') or bookname like concat('%',#{seach},'%') or username like concat('%',#{seach},'%') or time like concat('%',#{seach},'%')")
	List<WantBook> seachWantBook(String seach);
	//搜索我的加购书
	@Select("select * from wantbook where (anthor like concat('%',#{arg0},'%') or bookname like concat('%',#{arg0},'%') or time like concat('%',#{arg0},'%')) and userid=#{arg1}")
	List<WantBook> seachMyWantBook(String seach,String id);
	//新增图书
	@Insert("insert into books(isbn,bookname,anthor,publish,publishdate,num,price,states) values(#{isbn},#{bookname},#{anthor},#{publish},#{publishdate},#{num},#{price},#{states})")
	int addBooks(Books books);
	//查用户
	@Select("select * from user where id like concat('%',#{seach},'%') or name like concat('%',#{seach},'%') or idcard like concat('%',#{seach},'%')")
	List<User> selectAllUser(String seach);
	//查用户信息
	@Select("select * from usermessage  where id=#{id}")
	UserMessage selectOneUserMessage(String id);
	//删除用户
	@Delete("delete from user where id=#{id}")
	int delUser(String id);
	//删除用户信息
	@Delete("delete from usermessage where id=#{id}")
	int delUserMessage(String id);
	//搜索用户
	@Select("select * from user where id like concat('%',#{seach},'%') or name like concat('%',#{seach},'%') or idcard like concat('%',#{seach},'%')"
			+ " or time like concat('%',#{seach},'%') or part like concat('%',#{seach},'%')")
	List<User> seachUser(String seach);
	//管理员搜索
	@Select("select * from user where part=0")
	List<User> seachAdmin();
	//读者搜索
	@Select("select * from user where part=1")
	List<User> seachReadder();
	
	//分页图书
	@Select("select * from books where bookname like concat('%',#{arg2},'%') or anthor like concat('%',#{arg2},'%')  limit #{arg0},#{arg1} ")
	List<Books> pageBooks(int start,int pageSize,String seach);
	//分页用户
	@Select("select * from user where id like concat('%',#{arg2},'%') or name like concat('%',#{arg2},'%') or idcard like concat('%',#{arg2},'%')"
			+ "  limit #{arg0},#{arg1} ")
	List<User> pageUsers(int start,int pageSize,String seach);
	//分页留言
	@Select("select * from words limit #{arg0},#{arg1} ")
	List<Words> pageWords(int start,int pageSize);
	//分页我的留言
	@Select("select * from words where userid=#{arg2} limit #{arg0},#{arg1} ")
	List<Words> pageMyWords(int start,int pageSize,String userid);
	//分页加购
	@Select("select * from wantbook limit #{arg0},#{arg1} ")
	List<WantBook> pageWant(int start,int pageSize);
	//分页我的加购
	@Select("select * from wantbook where userid=#{arg2} limit #{arg0},#{arg1} ")
	List<WantBook> pageMyWant(int start,int pageSize,String userid);
	
}
