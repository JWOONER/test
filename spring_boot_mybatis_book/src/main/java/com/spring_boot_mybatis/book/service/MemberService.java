package com.spring_boot_mybatis.book.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_mybatis.book.dao.IMemberDAO;



@Service
public class MemberService implements IMemberService {
	@Autowired
	@Qualifier("IMemberDAO")
	IMemberDAO dao;

	@Override
	public String loginCheck(HashMap<String, Object> map) {
	      return dao.loginCheck(map);
	}

}
