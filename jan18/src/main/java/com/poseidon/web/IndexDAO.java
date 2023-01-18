package com.poseidon.web;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class IndexDAO {
	
	//자동연결 
	@Autowired
	private SqlSession sqlSession;

	public List<MemberDTO> list() {
		return sqlSession.selectList("member.list"); //네임스페이스.id 
	}
	
			
	
	//controller -> service -> dao -> Mybatis -> DB

}
