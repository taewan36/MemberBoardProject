package com.icia.memberboard.repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.memberboard.dto.MemberDTO;



@Repository
public class MemberRepository {

	@Autowired
	private SqlSessionTemplate sql;
	
	public int save(MemberDTO member) {
		System.out.println("MemberRepository.save(): " +member);
		return sql.insert("Member.save", member);
	}

	public MemberDTO login(MemberDTO member) {
		return sql.selectOne("Member.login", member);
	} 
	 
	public java.util.List<MemberDTO> findAll() {
		return sql.selectList("Member.findAll");
		
	}


	public MemberDTO findById(long m_number) {
		// TODO Auto-generated method stub
		return sql.selectOne("Member.findById", m_number);
	}

	public void delete(long m_number) {
		sql.delete("Member.delete", m_number);
		
	}

	public void update(MemberDTO member) {
		sql.update("Member.update", member);
		
	}

	public String idDuplicate(String m_id) {
		return sql.selectOne("Member.idDuplicate", m_id);
	}


	
	
	
	
}
 