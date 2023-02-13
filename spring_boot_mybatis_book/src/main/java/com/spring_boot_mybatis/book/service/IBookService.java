package com.spring_boot_mybatis.book.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring_boot_mybatis.book.model.BookVO;



public interface IBookService {
	public ArrayList<BookVO> listAllBook(); // 전체 상품 조회
	public void insertBook(BookVO book); // 상품 등록
	public void updateBook(BookVO book); // 상품 수정
	public void deleteBook(String bookNo); //상품 삭제
	public BookVO detailViewBook(String bookNo); // 상세 상품 조회
	public String bookNoCheck(String bookNo);
	public ArrayList<BookVO>bookSearch(HashMap<String,Object>map);//상품검색

}