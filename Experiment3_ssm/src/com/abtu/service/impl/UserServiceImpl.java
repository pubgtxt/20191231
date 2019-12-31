package com.abtu.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abtu.dao.UserDao;
import com.abtu.entity.Admin;
import com.abtu.entity.Books;
import com.abtu.entity.BorrowBook;
import com.abtu.entity.OutTalk;
import com.abtu.entity.User;
import com.abtu.entity.UserAllMessage;
import com.abtu.entity.UserMessage;
import com.abtu.entity.WantBook;
import com.abtu.entity.Words;
import com.abtu.service.UserService;
import com.abtu.util.Page;
import com.abtu.util.Pager;


@Service("userService")
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao userDao;

	@Override
	public int addUser(User user) {
		
		return userDao.addUser(user); 
	}
	@Override
	public User selectOne(String id) {
		// TODO Auto-generated method stub
		return userDao.selectOne(id);
	}
	@Override
	public int updateUser(User user) {
		// TODO Auto-generated method stub
		return userDao.upUser(user);
	}
	@Override
	public User login(String id, String pwd) {
		// TODO Auto-generated method stub
		return userDao.login(id, pwd);
	}
	@Override
	public List<Words> myWords(String id) {
		// TODO Auto-generated method stub
		return userDao.myWords(id);
	}
	@Override
	public int addUser(UserMessage um) {
		// TODO Auto-generated method stub
		return userDao.addUsermessage(um);
	}
	@Override
	public int upUser(UserMessage um) {
		// TODO Auto-generated method stub
		return userDao.upUsermessage(um);
	}
	@Override
	public int addWords(Words words) {
		// TODO Auto-generated method stub
		return userDao.addWords(words);
	}
	@Override
	public List<Words> allWords() {
		// TODO Auto-generated method stub
		return userDao.allWords();
	}
	@Override
	public int addOutTalk(OutTalk ot) {
		// TODO Auto-generated method stub
		return userDao.addOutTalk(ot);
	}
//	@Override
//	public List<Books> books() {
//		// TODO Auto-generated method stub
//		return userDao.books();
//	}
	@Override
	public List<OutTalk> allOutTalk() {
		// TODO Auto-generated method stub
		return userDao.allOutTalk();
	}
	@Override
	public UserMessage selectUM(String id) {
		// TODO Auto-generated method stub
		return userDao.selectUM(id);
	}
	@Override
	public Books selectOneBook(String id) {
		// TODO Auto-generated method stub
		return userDao.selectOneBook(id);
	}
	@Override
	public int borrowBook(int num1, String id) {
		// TODO Auto-generated method stub
		return userDao.borrowBook(num1, id);
	}
	@Override
	public int addBorrowBook(BorrowBook bb) {
		// TODO Auto-generated method stub
		return userDao.addBorrowBook(bb);
	}
	@Override
	public int upBook(String states, String id) {
		// TODO Auto-generated method stub
		return userDao.upBook(states, id);
	}
	@Override
	public List<Books> seachBooks(String seach) {
		// TODO Auto-generated method stub
		return userDao.seachBooks(seach);
	}
	@Override
	public List<BorrowBook> myborrow(String userid) {
		// TODO Auto-generated method stub
		return userDao.myborrow(userid);
	}
	@Override
	public List<WantBook> selectIsHaveWant(WantBook wb) {
		// TODO Auto-generated method stub
		return userDao.selectIsHaveWant(wb);
	}
	@Override
	public int addWantBook(WantBook wb) {
		// TODO Auto-generated method stub
		return userDao.addWantBook(wb);
	}
	@Override
	public List<WantBook> allWantBook() {
		// TODO Auto-generated method stub
		return userDao.allWantBook();
	}
	@Override
	public List<WantBook> myWantBook(String userid) {
		// TODO Auto-generated method stub
		return userDao.myWantBook(userid);
	}
	@Override
	public List<BorrowBook> allborrow() {
		// TODO Auto-generated method stub
		return userDao.allborrow();
	}
	@Override
	public int delBorrow(String id) {
		// TODO Auto-generated method stub
		return userDao.delBorrow(id);
	}
	@Override
	public int updateBorrow(String states, String id) {
		// TODO Auto-generated method stub
		return userDao.updateBorrow(states, id);
	}
	@Override
	public int returnBorrow(String states, String id, String returntime) {
		// TODO Auto-generated method stub
		return userDao.returnBorrow(states, id, returntime);
	}
	@Override
	public int delWords(String id) {
		// TODO Auto-generated method stub
		return userDao.delWords(id);
	}
	@Override
	public int delWantBook(String id) {
		// TODO Auto-generated method stub
		return userDao.delWantBook(id);
	}
	@Override
	public List<WantBook> countWantBook(String bookname) {
		// TODO Auto-generated method stub
		return userDao.countWantBook(bookname);
	}
	@Override
	public int addBooks(Books books) {
		// TODO Auto-generated method stub
		return userDao.addBooks(books);
	}
	@Override
	public int delOutTalk(int id) {
		// TODO Auto-generated method stub
		return userDao.delOutTalk(id);
	}
	@Override
	public List<BorrowBook> seachBorrowBook(String seach) {
		// TODO Auto-generated method stub
		return userDao.seachBorrowBook(seach);
	}
	@Override
	public List<BorrowBook> seachMyBorrowBook(String seach, String id) {
		// TODO Auto-generated method stub
		return userDao.seachMyBorrowBook(seach, id);
	}
	@Override
	public List<WantBook> seachWantBook(String seach) {
		// TODO Auto-generated method stub
		return userDao.seachWantBook(seach);
	}
	@Override
	public List<WantBook> seachMyWantBook(String seach, String id) {
		// TODO Auto-generated method stub
		return userDao.seachMyWantBook(seach, id);
	}
//	@Override
//	public List<User> selectAllUser() {
//		// TODO Auto-generated method stub
//		return userDao.selectAllUser();
//	}
	@Override
	public UserMessage selectOneUserMessage(String id) {
		// TODO Auto-generated method stub
		return userDao.selectOneUserMessage(id);
	}
	@Override
	public int delUser(String id) {
		// TODO Auto-generated method stub
		return userDao.delUser(id);
	}
	@Override
	public int delUserMessage(String id) {
		// TODO Auto-generated method stub
		return userDao.delUserMessage(id);
	}
	@Override
	public List<User> seachUser(String seach) {
		// TODO Auto-generated method stub
		List<User> list = new ArrayList();
		list = userDao.seachUser(seach);
		if("管理员".equals(seach)){
			seach="0";
			list.addAll(userDao.seachAdmin());
		}
		if("读者".equals(seach)){
			seach="1";
			list.addAll(userDao.seachReadder());
		}
		return list;
	}
	
	
	/* 获取图书分页信息 */
	@Override
	public Pager<Books> getBookPager(int currentPage, int pageSize,String seach) {
		int totalSize = userDao.books(seach).size();// 总记录数
		int totalPage = 0;// 总页数
		if (totalSize % pageSize == 0) {
			totalPage = totalSize / pageSize;
		} else {
			totalPage = totalSize / pageSize + 1;
		}
		currentPage = currentPage > totalPage ? totalPage : currentPage;
		List<Books> list = findBooksByPage1(currentPage, pageSize,seach);
		Pager<Books> pager = new Pager<Books>(currentPage, totalPage, pageSize, totalSize, list);
		return pager;
	}
	
	/* 分页查询图书信息 */
	private List<Books> findBooksByPage1(int currentPage, int pageSize,String seach) {
		if (currentPage < 1) {
			currentPage = 1;
		}
		int start = (currentPage - 1) * pageSize;
		return userDao.pageBooks(start, pageSize,seach);
	}
	/* 获取用户分页信息 */
	@Override
	public Pager<UserAllMessage> getUserPager(int currentPage, int pageSize,String seach) {
		int totalSize = userDao.selectAllUser(seach).size();// 总记录数
		int totalPage = 0;// 总页数
		if (totalSize % pageSize == 0) {
			totalPage = totalSize / pageSize;
		} else {
			totalPage = totalSize / pageSize + 1;
		}
		currentPage = currentPage > totalPage ? totalPage : currentPage;
		List<User> list = findUserByPage(currentPage, pageSize,seach);
		List<UserAllMessage> uam = new ArrayList();
		for(User user1:list){
			UserMessage um = selectOneUserMessage(user1.getId());
			uam.add(new UserAllMessage(user1,um));
		}
		
		
		
		Pager<UserAllMessage> pager = new Pager<UserAllMessage>(currentPage, totalPage, pageSize, totalSize, uam);
		return pager;
	}
	
	/* 分页查询用户信息 */
	private List<User> findUserByPage(int currentPage, int pageSize,String seach) {
		if (currentPage < 1) {
			currentPage = 1;
		}
		int start = (currentPage - 1) * pageSize;
		return userDao.pageUsers(start, pageSize,seach);
	}
	@Override
	public Pager<Words> getWordsPager(int currentPage, int pageSize) {
		int totalSize = userDao.allWords().size();// 总记录数
		int totalPage = 0;// 总页数
		if (totalSize % pageSize == 0) {
			totalPage = totalSize / pageSize;
		} else {
			totalPage = totalSize / pageSize + 1;
		}
		currentPage = currentPage > totalPage ? totalPage : currentPage;
		List<Words> list = findWordsByPage(currentPage, pageSize);
		Pager<Words> pager = new Pager<Words>(currentPage, totalPage, pageSize, totalSize, list);
		
		return pager;
	}
	
	/* 分页查询留言信息 */
	private List<Words> findWordsByPage(int currentPage, int pageSize) {
		if (currentPage < 1) {
			currentPage = 1;
		}
		int start = (currentPage - 1) * pageSize;
		return userDao.pageWords(start, pageSize);
	}
	
	@Override
	public Pager<Words> getMyWordsPager(int currentPage, int pageSize, String userid) {
		int totalSize = userDao.myWords(userid).size();// 总记录数
		int totalPage = 0;// 总页数
		if (totalSize % pageSize == 0) {
			totalPage = totalSize / pageSize;
		} else {
			totalPage = totalSize / pageSize + 1;
		}
		currentPage = currentPage > totalPage ? totalPage : currentPage;
		List<Words> list = findMyWordsByPage(currentPage, pageSize,userid);
		Pager<Words> pager = new Pager<Words>(currentPage, totalPage, pageSize, totalSize, list);
		return pager;
	}
	/* 分页查询wd留言信息 */
	private List<Words> findMyWordsByPage(int currentPage, int pageSize,String userid) {
		if (currentPage < 1) {
			currentPage = 1;
		}
		int start = (currentPage - 1) * pageSize;
		return userDao.pageMyWords(start, pageSize, userid);
	}
	@Override
	public Pager<WantBook> getWantPager(int currentPage, int pageSize) {
		int totalSize = userDao.allWantBook().size();// 总记录数
		int totalPage = 0;// 总页数
		if (totalSize % pageSize == 0) {
			totalPage = totalSize / pageSize;
		} else {
			totalPage = totalSize / pageSize + 1;
		}
		currentPage = currentPage > totalPage ? totalPage : currentPage;
		List<WantBook> list = findMyWantByPage(currentPage, pageSize);
		Pager<WantBook> pager = new Pager<WantBook>(currentPage, totalPage, pageSize, totalSize, list);
		return pager;
	}
	/* 分页查询加购信息 */
	private List<WantBook> findMyWantByPage(int currentPage, int pageSize) {
		if (currentPage < 1) {
			currentPage = 1;
		}
		int start = (currentPage - 1) * pageSize;
		return userDao.pageWant(start, pageSize);
	}
	
	
	@Override
	public Pager<WantBook> getMyWantPager(int currentPage, int pageSize, String userid) {
		int totalSize = userDao.myWantBook(userid).size();// 总记录数
		int totalPage = 0;// 总页数
		if (totalSize % pageSize == 0) {
			totalPage = totalSize / pageSize;
		} else {
			totalPage = totalSize / pageSize + 1;
		}
		currentPage = currentPage > totalPage ? totalPage : currentPage;
		List<WantBook> list = findBooksByPage(currentPage, pageSize,userid);
		Pager<WantBook> pager = new Pager<WantBook>(currentPage, totalPage, pageSize, totalSize, list);
		
		
		return pager;
	}
	/* 分页查询wdjaigou信息 */
	private List<WantBook> findBooksByPage(int currentPage, int pageSize,String userid) {
		if (currentPage < 1) {
			currentPage = 1;
		}
		int start = (currentPage - 1) * pageSize;
		return userDao.pageMyWant(start, pageSize, userid);
	}

}
