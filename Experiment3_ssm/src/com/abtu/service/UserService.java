package com.abtu.service;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.abtu.entity.Admin;
import com.abtu.entity.Books;
import com.abtu.entity.BorrowBook;
import com.abtu.entity.OutTalk;
import com.abtu.entity.User;
import com.abtu.entity.UserAllMessage;
import com.abtu.entity.UserMessage;
import com.abtu.entity.WantBook;
import com.abtu.entity.Words;
import com.abtu.util.Page;
import com.abtu.util.Pager;

public interface UserService {
	
	int addUser(User user);
	User selectOne(String id);
	int updateUser(User user);
	User login(String id,String pwd);
	List<Words> myWords(String id);
	List<Words> allWords();
	int addWords(Words words);
	int addUser(UserMessage um);
	int upUser(UserMessage um);
	int addOutTalk(OutTalk ot);
	List<OutTalk> allOutTalk();
//	List<Books> books();
	UserMessage selectUM(String id );
	Books selectOneBook(String id);
	int borrowBook(int num1,String id);
	int addBorrowBook(BorrowBook bb);
	int upBook(String states,String id);
	List<Books> seachBooks(String seach);
	List<BorrowBook> myborrow(String userid);
	List<BorrowBook> seachBorrowBook(String seach);
	List<BorrowBook> seachMyBorrowBook(String seach,String id);
	List<WantBook> selectIsHaveWant(WantBook wb);
	int addWantBook(WantBook wb);
	List<WantBook> allWantBook();
	List<WantBook> myWantBook(String userid);
	List<BorrowBook> allborrow();
	int delBorrow(String id);
	int updateBorrow(String states,String id);
	int returnBorrow(String states,String id,String returntime);
	int delWords(String id);
	int delWantBook(String id);
	List<WantBook> countWantBook(String bookname);
	List<WantBook> seachWantBook(String seach);
	List<WantBook> seachMyWantBook(String seach,String id);
	int addBooks(Books books);
	int delOutTalk(int id);
//	List<User> selectAllUser();
	UserMessage selectOneUserMessage(String id);
	int delUser(String id);
	int delUserMessage(String id);
	List<User> seachUser(String seach);
	Pager<Books> getBookPager(int currentPage, int pageSize,String seach);
	Pager<UserAllMessage> getUserPager(int currentPage, int pageSize,String seach);
	Pager<Words> getWordsPager(int currentPage, int pageSize);
	Pager<Words> getMyWordsPager(int currentPage, int pageSize,String userid);
	Pager<WantBook> getWantPager(int currentPage, int pageSize);
	Pager<WantBook> getMyWantPager(int currentPage, int pageSize,String userid);
}
