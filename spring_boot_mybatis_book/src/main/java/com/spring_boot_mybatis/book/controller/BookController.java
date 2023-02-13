package com.spring_boot_mybatis.book.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring_boot_mybatis.book.model.BookVO;
import com.spring_boot_mybatis.book.service.BookService;





@Controller
public class BookController {

		@Autowired
		BookService service;
		@RequestMapping("/")
		public String index() {
			return"index";
		}

		@RequestMapping("/book/bookAllList")
		public String ViewbookListAll(Model model) {
			ArrayList<BookVO>bookList=service.listAllBook();
			model.addAttribute("bookList",bookList);
		return "book/bookAllListView";
	}
		@RequestMapping("/book/bookNewForm")
		public String bookNewForm() {
			return"book/bookForm";
		}
		@RequestMapping("/book/insertBook")
		public String insertBook(BookVO book) {
			service.insertBook(book);
			return"redirect:/book/bookAllList";
		}
		@RequestMapping("/book/detailViewBook/{bookNo}")
		public String detailViewBook(@PathVariable String bookNo,Model model) {
			BookVO book=service.detailViewBook(bookNo);
			model.addAttribute("book",book);
			return"/book/bookDetailView";
		}
		
		@RequestMapping("/book/updateBookForm/{bookNo}")
		public String updateBookForm(@PathVariable String bookNo,Model model) {
			BookVO book=service.detailViewBook(bookNo);
			model.addAttribute("book",book);
			return"/book/bookUpdateForm";
		}
			@RequestMapping("/book/updateBook")
			public String updateBook(BookVO book) {
			service.updateBook(book);
			return "redirect:/book/bookAllList";
	}
			@RequestMapping("/book/deleteBook/{bookNo}")
			public String deleteBook(@PathVariable String bookNo) {
			service.deleteBook(bookNo);
			return "redirect:/book/bookAllList";
	}
			// 상품번호 중복 확인
			@ResponseBody
			@RequestMapping("/book/bookNoCheck")
			public String bookNoCheck(@RequestParam("bookNo") String bookNo) {
				// 서비스 호출하고 DB에 prdNo 존재하면 prdNo 받고, 존재하지 않으면 null 받음
				String bookNo_result = service.bookNoCheck(bookNo);
				
				String result = "use";
				if(bookNo_result != null)  // 존재한다면
					result = "no_use";
				
				return result;
			}
			 @RequestMapping("/book/bookSearchForm1")
			   public String bookSearchForm1() {
				    return "book/bookSearchForm1";
			   }
			 @ResponseBody
			  @RequestMapping("/book/bookSearch1")
			   public ArrayList<BookVO>bookSearch1(@RequestParam HashMap<String,Object>param,Model model){
				   ArrayList<BookVO>bookList=service.bookSearch(param); 
				   return bookList;
			 }
				   @RequestMapping("/book/bookSearchForm2")
				   public String bookSearchForm2() {
					    return "book/bookSearchForm2";
				   }
				 
				   @RequestMapping("/book/bookSearch2")
				   public String bookSearch2(@RequestParam HashMap<String,Object>param,Model model){
					   ArrayList<BookVO>bookList=service.bookSearch(param);
					   model.addAttribute("bookList",bookList);
					   return"book/bookSearchResultView";
					   
				   }
				   
}



