package com.icia.memberboard.service;

import java.util.List;

import com.icia.memberboard.dto.CommentDTO;



public interface CommentService {

	 void save(CommentDTO comment);
		// TODO Auto-generated method stub

	List<CommentDTO> findAll(long b_number);
		
	}


