package kr.co.sp04.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import kr.co.sp04.cmm.DBConnection;
import kr.co.sp04.dao.ComitteeListDAO;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.apache.ibatis.session.SqlSession; 
import org.mybatis.spring.SqlSessionTemplate;

@Repository
public class ComitteeListDAOImpl implements ComitteeListDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	private static String namespace = "kr.co.sp04.dao.ComitteeListDao"; 
	private static final Logger logger = LoggerFactory.getLogger(ComitteeListDAOImpl.class);
	
	public List<HashMap<String,String>> listComittee(Map<String, String> hm1) {
		
		   return sqlSession.selectList(namespace +".listComittee", hm1 );
	}
	
	public int  deleteComittee(Map<String, String> hm4) {
		
		return sqlSession.delete("kr.co.sp04.dao.ComitteeListDao.deleteComittee", hm4 );

	}
	
	public Map<String, String>  viewComittee(Map<String, String> hm3){
		
		int i = sqlSession.update("kr.co.sp04.dao.ComitteeListDao.updateCnt", hm3 );
		if (i > 0 ) {
			return sqlSession.selectOne("kr.co.sp04.dao.ComitteeListDao.viewComittee", hm3 );
		} else {
			return null;	
		}
	}
	
	public int  writeComittee(Map<String, String> hm2){
		
		return sqlSession.insert("kr.co.sp04.dao.ComitteeListDao.writeComittee", hm2 );

	}
	
	public int  editComittee(Map<String, String> hm5) {
		
		return sqlSession.update("kr.co.sp04.dao.ComitteeListDao.deleteComittee", hm5 );

			}
	
	@Override
	public String selectTotal(Map<String, String> hm1) {
	
		int i = sqlSession.selectOne("kr.co.sp04.dao.ComitteeListDao.selectTotal", hm1 );
		return String.valueOf(i);
	}
}