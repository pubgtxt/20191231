package com.abtu.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Period;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.abtu.entity.Admin;
import com.abtu.entity.BookWantAdd;
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


@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	//登录
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(String id,String pwd,HttpSession session,Model model) {
		
		User user = userService.login(id, pwd);
		if(user!=null){
			session.setAttribute("user", user);
			model.addAttribute("user",user);
			return "main";
		}
		model.addAttribute("errorMsg", "用户名或密码错误");
		return "forward:/login.jsp";
	}
	//进入注册
	@RequestMapping(value="/toSign")
	public String toSign() {
			return "reg";
	}
	//注册
	@RequestMapping(value="/sign",method=RequestMethod.POST)
	public String sign(User user, HttpSession session,Model model) {
		User user1 = userService.selectOne(user.getId());
		if(user1!=null) {
			model.addAttribute("regmsg","账号已存在，请直接登陆或重试！");
			return "reg";
		}
		user.setPart("1");//设置管理员
		int i = userService.addUser(user);			
		UserMessage um = new UserMessage();
		um.setId(user.getId());	
		userService.addUser(um);
		if(i!=0) {
			model.addAttribute("regmsg","注册成功，请登录！");
			return "forward:/login.jsp";
		}
		model.addAttribute("regmsg","注册失败，请重试！");
		return "reg";
	}
	//进入新增管理员
	@RequestMapping(value="/toaddadmin")
	public String toAddAdmin() {
		return "addadmin";
	}
	//新增管理员
	@RequestMapping(value="/addadmin",method=RequestMethod.POST)
	public String addAdmin(User user, HttpSession session,Model model) {
		User user1 = userService.selectOne(user.getId());
		if(user1!=null) {
			model.addAttribute("regmsg","账号已存在，请重试！");
			return "forward:/user/toaddadmin";
		}
		user.setPart("0");
		int i = userService.addUser(user);			
		UserMessage um = new UserMessage();
		um.setId(user.getId());
		userService.addUser(um);
		if(i!=0) {
			model.addAttribute("regmsg","新增成功！");
			return "forward:/user/toaddadmin";
		}
		model.addAttribute("regmsg","注册失败，请重试！");
		return "forward:/user/toaddadmin";
	}
	//进入新增读者
	@RequestMapping(value="/toaddreader")
	public String toAddReader() {
		return "addreader";
	}
	//新增读者
	@RequestMapping(value="/addreader",method=RequestMethod.POST)
	public String addReder(User user, HttpSession session,Model model) {
		User user1 = userService.selectOne(user.getId());
		if(user1!=null) {
			model.addAttribute("regmsg","账号已存在，请重试！");
			return "forward:/user/toaddreader";
		}
		user.setPart("1");
		int i = userService.addUser(user);			
		UserMessage um = new UserMessage();
		um.setId(user.getId());
		userService.addUser(um);
		if(i!=0) {
			model.addAttribute("regmsg","新增成功！");
			return "forward:/user/toaddreader";
		}
		model.addAttribute("regmsg","注册失败，请重试！");
		return "forward:/user/toaddreader";
	}
	//进入修改密码
	@RequestMapping(value="/touppwd")
	public String toUpPwd(HttpSession session,Model model) {
			return "uppwd";
	}
	//修改密码
	@RequestMapping(value="/uppwd")
	public String upPwd(String oldpwd,String newpwd,HttpSession session,Model model) {
		User user = (User) session.getAttribute("user");//user就是当前登录的用户
		if(oldpwd==null||"".equals(oldpwd)){
			model.addAttribute("pwdmsg","请输入旧密码!");
			return "forward:/user/touppwd";
		}
		
		if(user.getPwd().equals(oldpwd)){
			user.setPwd(newpwd);
			userService.updateUser(user);//更新用户
			model.addAttribute("pwdmsg","密码修改成功，请重新登录!");
			return "forward:/user/touppwd";
		}
		model.addAttribute("pwdmsg","旧密码错误!");
		return "forward:/user/touppwd";
	}
	
	//进入忘记密码
	@RequestMapping(value="/toPwd")
	public String toPwd() {
		return "forgetpwd";
	}
	//忘记密码
	@RequestMapping(value="/pwd")
	public String pwd(User user, HttpSession session,Model model) {
		User user1 = userService.selectOne(user.getId());
		boolean res = user.getIdcard().equals(user1.getIdcard());
		
		if(res==true) {
			userService.updateUser(user);
			model.addAttribute("updatepwd","修改成功，请重新登录！");
			return "forward:/login.jsp";
		}
			model.addAttribute("updatepwd","修改失败，请重试！");
			return "forgetpwd";
	}
		
	
	//进入个人信息
	@RequestMapping(value="/usermessage")
	public String userMessage(HttpSession session,Model model) {
		User user = (User) session.getAttribute("user");
		UserMessage um = userService.selectUM(user.getId());
		model.addAttribute("um",um);
		return "usermessage";
	}
	
	//完善信息
	@RequestMapping(value="/upUser")
	public String upUser(HttpSession session,UserMessage um) {
		User user = (User) session.getAttribute("user");
		um.setId(user.getId());
		userService.upUser(um);
		return "forward:/user/usermessage";
	}
	//上下架
	@RequestMapping(value="/upordown")
	public String upOrDown(String id,String states) {
		userService.upBook(states, id);
		return "forward:/user/tobooks";
	}
	//搜索书
	@RequestMapping(value="/seachbook")
	public String seachBook(String seach,Model model) {
		List<Books> books = userService.seachBooks(seach);
		model.addAttribute("books",books);
		return "books";
	}
	//进入留言
	@RequestMapping(value="/towords")
	public String toWords() {
		return "addwords";
	}
	//发表留言
	@RequestMapping(value="/addwords")
	public String addWords(HttpSession session,Words words) {
		User user = (User) session.getAttribute("user");
		Date ss = new Date();
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
	    String time = format1.format(ss.getTime());
	    words.setTime(time);
	    words.setUserid(user.getId());
	    userService.addWords(words);
		return "addwords";
	}
	//我的留言
	@RequestMapping(value="/mywords")
	public String myWords(String nowone,HttpSession session,Model model) {
		User user = (User) session.getAttribute("user");
		int currentPage = 1;
		if(nowone != null && !"".equals(nowone)) {
			currentPage = Integer.parseInt(nowone);
		} 
		Pager<Words> wordspager = userService.getMyWordsPager(currentPage, 5, user.getId());
		model.addAttribute("wordspager",wordspager);
		return "mywords";
	}
	
	//所有留言
	@RequestMapping(value="/allwords")
	public String allWords(String nowone,HttpSession session,Model model) {
		int currentPage = 1;
		if(nowone != null && !"".equals(nowone)) {
			currentPage = Integer.parseInt(nowone);
		} 
		Pager<Words> wordspager = userService.getWordsPager(currentPage, 5);
		model.addAttribute("wordspager",wordspager);
		return "allwords";
	}

	//进入发布公告
	@RequestMapping(value="/outtalk")
	public String outTalk() {
		return "outtalk";
	}
	//删除公告
	@RequestMapping(value="/delouttalk")
	public String delouttalk(String id) {
		userService.delOutTalk(Integer.parseInt(id));
		return "forward:/user/allouttalk";
	}
	//所有公告
	@RequestMapping(value="/allouttalk")
	public String allOutTalk(HttpSession session,Model model) {
		List<OutTalk> ot = userService.allOutTalk();
		model.addAttribute("outtalk",ot);
		return "allouttalk";
	}
	//发布公告
	@RequestMapping(value="/addouttalk")
	public String addOuttalk(OutTalk ot) {
		Date ss = new Date();
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
	    String time = format1.format(ss.getTime());
	    ot.setTime(time);
		userService.addOutTalk(ot);
		return "forward:/user/allouttalk";
	}
	//进入图书
	@RequestMapping(value="/tobooks")
	public String tobooks(String nowone,String seach,HttpSession session,Model model) {
		int currentPage = 1;
		if(nowone != null && !"".equals(nowone)) {
			currentPage = Integer.parseInt(nowone);
		} 
		if(seach==null){
			seach="";
		}
		Pager<Books> bookpager = userService.getBookPager(currentPage, 5,seach);
		model.addAttribute("bookpager",bookpager);
		model.addAttribute("seach",seach);
		return "books";
	}
	
	//借书
	@RequestMapping(value="/borrow")
	public String borrow(HttpSession session,String id,Model model) {
		Books book = userService.selectOneBook(id);
		User user = (User) session.getAttribute("user");
		if(book.getNum()<=0) {
			model.addAttribute("borrowmessage","本书太受欢迎了，请换个时间来吧！");
			return "forward:/user/borrow";
		}
		int num = book.getNum();
		int num1 = num-1;
		Date ss = new Date();
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
	    String time = format1.format(ss.getTime());
		userService.borrowBook(num1, id);
		BorrowBook bb = new BorrowBook();
		bb.setIsbn(book.getIsbn());
		bb.setBookid(book.getId());
		bb.setBookname(book.getBookname());
		bb.setUserid(user.getId());
		bb.setUsername(user.getName());
		bb.setBorrowtime(time);
		bb.setPart("0");
		userService.addBorrowBook(bb);
		return "forward:/user/tobooks";
	}
	//所有预借阅
	@RequestMapping(value="/allborrow")
	public String allBorrow(Model model) throws Exception {
		List<BorrowBook> bb = userService.allborrow();
		Date ss = new Date();
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
	    Calendar cal = Calendar.getInstance();
		for(BorrowBook bb1:bb){
			if(bb1.getReturntime()==null||"".equals(bb1.getReturntime())){
				cal.setTime(ss);
				long timeend = cal.getTimeInMillis();
				cal.setTime(format1.parse(bb1.getBorrowtime()));
				long timebegin = cal.getTimeInMillis();
				long times=(timeend-timebegin)/(1000*3600*24);
				bb1.setTime(String.valueOf(times));
			}else{
				cal.setTime(format1.parse(bb1.getReturntime()));
				long timeend = cal.getTimeInMillis();
				cal.setTime(format1.parse(bb1.getBorrowtime()));
				long timebegin = cal.getTimeInMillis();
				long times=(timeend-timebegin)/(1000*3600*24);
				bb1.setTime(String.valueOf(times));
			}
		}
		model.addAttribute("allborrow",bb);
		return "allborrow";
	}
	//预借阅查询
	@RequestMapping(value="/seachborrowbook")
	public String seachBorrowBook(String seach,Model model) {
		List<BorrowBook> bb = userService.seachBorrowBook(seach);
		model.addAttribute("allborrow",bb);
		return "allborrow";
	}
	//我的预借阅查询
	@RequestMapping(value="/seachmyborrowbook")
	public String seachMyBorrowBook(HttpSession session,String seach,Model model) {
		User user = (User) session.getAttribute("user");
		List<BorrowBook> bb = userService.seachMyBorrowBook(seach,user.getId());
		model.addAttribute("myborrow",bb);
		return "myborrow";
	}
	//我的预借阅
	@RequestMapping(value="/myborrow")
	public String mtBorrow(HttpSession session,Model model) throws Exception {
		User user = (User) session.getAttribute("user");
		List<BorrowBook> bb = userService.myborrow(user.getId());
		Date ss = new Date();
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
	    Calendar cal = Calendar.getInstance();
		for(BorrowBook bb1:bb){
			if(bb1.getReturntime()==null||"".equals(bb1.getReturntime())){
				cal.setTime(ss);
				long timeend = cal.getTimeInMillis();
				cal.setTime(format1.parse(bb1.getBorrowtime()));
				long timebegin = cal.getTimeInMillis();
				long times=(timeend-timebegin)/(1000*3600*24);
				bb1.setTime(String.valueOf(times));
			}else{
				cal.setTime(format1.parse(bb1.getReturntime()));
				long timeend = cal.getTimeInMillis();
				cal.setTime(format1.parse(bb1.getBorrowtime()));
				long timebegin = cal.getTimeInMillis();
				long times=(timeend-timebegin)/(1000*3600*24);
				bb1.setTime(String.valueOf(times));
			}
		}
		model.addAttribute("myborrow",bb);
		return "myborrow";
	}
	//删除已归还记录
	@RequestMapping(value="/delborrow")
	public String delBorrow(HttpSession session,String id) {
		User user = (User) session.getAttribute("user");
		userService.delBorrow(id);
		if(user.getPart().equals("0")){
			return "forward:/user/allborrow";
		}else{
			return "forward:/user/myborrow";
		}
	}
	//借出
	@RequestMapping(value="/getborrow")
	public String getBorrow(HttpSession session,String id) {
		userService.updateBorrow("1", id);
		return "forward:/user/allborrow";
	}
	//拒绝出借
	@RequestMapping(value="/disborrow")
	public String disBorrow(HttpSession session,String id) {
		userService.updateBorrow("-1", id);
		return "forward:/user/allborrow";
	}
	//归还
	@RequestMapping(value="/returnborrow")
	public String returnBorrow(HttpSession session,String id) {
		Date ss = new Date();
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
	    String time = format1.format(ss.getTime());
		userService.returnBorrow("2", id,time);
		return "forward:/user/allborrow";
	}
	//进入申请加购
	@RequestMapping(value="/wantbook")
	public String wantBook() {
		return "wantbook";
	}
	//申请加购
	@RequestMapping(value="/wantbookadd")
	public String wantBookAdd(WantBook wb,HttpSession session,Model model) {
		User user = (User) session.getAttribute("user");
		wb.setUserid(user.getId());
		wb.setUsername(user.getName());
		wb.setPart("0");
		Date ss = new Date();
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
	    String time = format1.format(ss.getTime());
	    wb.setTime(time);
		List<WantBook> list = userService.selectIsHaveWant(wb);
		if(list.size()==0){
			System.out.println(wb.getAnthor());
			System.out.println(wb.getBookname());
			userService.addWantBook(wb);
			model.addAttribute("wantbookmsg","申请成功，请耐心等待！");
			return "forward:/user/wantbook";
			
		}
		model.addAttribute("wantbookmsg","您已申请加购此书！");
		return "forward:/user/wantbook";
		
	}
	//进入我的申请加购
	@RequestMapping(value="/mywantbook")
	public String myWantBook(String nowone,HttpSession session,Model model) {
		User user = (User) session.getAttribute("user");
		int currentPage = 1;
		if(nowone != null && !"".equals(nowone)) {
			currentPage = Integer.parseInt(nowone);
		} 
		Pager<WantBook> wantpager = userService.getMyWantPager(currentPage, 5,user.getId());
		model.addAttribute("wantpager",wantpager);
		return "mywantbook";
	}
	//进入所有申请加购
	@RequestMapping(value="/allwantbook")
	public String allWantBook(String nowone,Model model) {
		int currentPage = 1;
		if(nowone != null && !"".equals(nowone)) {
			currentPage = Integer.parseInt(nowone);
		} 
		Pager<WantBook> wantpager = userService.getWantPager(currentPage, 5);
		model.addAttribute("wantpager",wantpager);
		return "allwantbook";
	}
	//加购数量
	@RequestMapping(value="/countwantbook")
	public String countWantBook(String bookname,String anthor,Model model) {
		List<WantBook> list = userService.countWantBook(bookname);
		int length = list.size();
//		int length =5;
		BookWantAdd bwa = new BookWantAdd(bookname,anthor,String.valueOf(length));
//		BookWantAdd bwa = new BookWantAdd("<chichicchi>","实打实",String.valueOf(length));

		model.addAttribute("bwa",bwa);
		return "forward:/user/toaddbook";
	}
	//取消申请加购
	@RequestMapping(value="/delwantbook")
	public String delWantBook(String id,Model model) {
		userService.delWantBook(id);
		return "forward:/user/mywantbook";
	}
	//加购查询
	@RequestMapping(value="/seachwantbook")
	public String seachWantBook(String seach,Model model) {
		List<WantBook> bb = userService.seachWantBook(seach);
		model.addAttribute("allwantbook",bb);
		return "allwantbook";
	}
	//我的加购查询
	@RequestMapping(value="/seachmywantbook")
	public String seachMyWantBook(HttpSession session,String seach,Model model) {
		User user = (User) session.getAttribute("user");
		List<WantBook> bb = userService.seachMyWantBook(seach, user.getId());
		model.addAttribute("mywantbook",bb);
		return "mywantbook";
	}
	
	//进入新增图书
	@RequestMapping(value="/toaddbook")
	public String toAddBook(String part,Model model) {
		BookWantAdd bwa = new BookWantAdd();
		if("1".equals(part)){
			model.addAttribute("bwa",bwa);
		}
		return "addbook";
	}
	//新增图书
	@RequestMapping(value="/addbook")
	public String addBook(Books books,Model model) {
		books.setStates("1");
		userService.addBooks(books);
		return "forward:/user/tobooks";
	}
	
	
	//用户管理
	@RequestMapping(value="/touam")
	public String toUAM(String nowone,String seach,HttpSession session,Model model)	{
		
		int currentPage = 1;
		if(nowone != null && !"".equals(nowone)) {
			currentPage = Integer.parseInt(nowone);
		} 
		if(seach == null){
			seach="";
		}
		Pager<UserAllMessage> userpager = userService.getUserPager(currentPage, 5,seach);
		model.addAttribute("userpager",userpager);
		model.addAttribute("seach",seach);
		return "touser";
	}
	//用户删除
	@RequestMapping(value="/deluam")
	public String delUAM(HttpSession session,String id,Model model) {
		User user = (User) session.getAttribute("user");
		if(id.equals("1")){
			model.addAttribute("deluammsg","超管不可删!");
			return "forward:/user/touam";
		}
		if(user.getId().equals("1")){
			userService.delUser(id);
			userService.delUserMessage(id);
			model.addAttribute("deluammsg","删除成功!");
			return "forward:/user/touam";
		}
		User user1 = userService.selectOne(id);
		if(user1.getPart().equals("0")){
			model.addAttribute("deluammsg","普通管理员不能删除其他管理员!");
			return "forward:/user/touam";
		}
		userService.delUser(id);
		userService.delUserMessage(id);
		model.addAttribute("deluammsg","删除成功!");
		return "forward:/user/touam";
	}
	//用户查询
	@RequestMapping(value="/seachuam")
	public String seachUAM(String seach,Model model) {
		List<User> list = userService.seachUser(seach);
		List<UserAllMessage> uam = new ArrayList();
		UserAllMessage uam1 = new UserAllMessage();
		for(User user1:list){
			UserMessage um = userService.selectOneUserMessage(user1.getId());
			uam1.setUser(user1);
			uam1.setUm(um);
			uam.add(uam1);
		}
		model.addAttribute("uam",uam);
		return "touser";
	}
	
	//主页面
	@RequestMapping(value="/welcome")
	public String welcome() {
		return "welcome";
	}
	
	//登出
	@RequestMapping("/loginOut")
	public String loginOut(HttpSession session) {
		session.invalidate();
		return "redirect:/login.jsp";
		
	}
	
	
	

}
