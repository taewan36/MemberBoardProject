package com.icia.memberboard.dto;

import lombok.Data;

@Data
public class MemberDTO {
	//db에 담기위해 필드선언
	private long m_number;
	private String m_id;
	private String m_password;
	private String m_name;
	private String m_email;
	private String m_phone;
}
