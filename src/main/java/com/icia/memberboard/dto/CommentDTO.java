package com.icia.memberboard.dto;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class CommentDTO {
	
	private long c_number;
	private long b_number;
	private String c_writer;
	private String c_contents;
	private Timestamp c_date;
}
