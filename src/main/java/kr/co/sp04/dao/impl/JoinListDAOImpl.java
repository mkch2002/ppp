package kr.co.sp04.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.sp04.cmm.DBConnection;
import kr.co.sp04.dao.JoinListDAO;
import kr.co.sp04.dao.JoinListDAO;

@Repository
public class JoinListDAOImpl implements JoinListDAO {

	@Autowired 
	   private SqlSessionTemplate sqlSession;
	   private static String namespace = "kr.co.sp04.dao.JoinListDao"; 
	   private static final Logger logger = LoggerFactory.getLogger(JoinListDAOImpl.class);


	   public List<HashMap<String,String>> listJoin(Map<String, String> hm1) {
		   logger.debug("¿©±â´Â BoardDaoImpl");	
		   return sqlSession.selectList(namespace +".listJoin", hm1 );
	   }
	
public int  writeJoin(Map<String, String> hm2) {
	
	return sqlSession.insert("kr.co.sp04.dao.JoinListDao.writeJoin", hm2 );
		
	}	

public Map<String,String> viewJoin(Map<String, String> hm3) {
	
	int i = sqlSession.update("kr.co.sp04.dao.JoinListDao.updateCnt", hm3 );
	if (i > 0 ) {
		return sqlSession.selectOne("kr.co.sp04.dao.JoinListDao.viewJoin", hm3 );
	} else {
		return null;	
	}
}

public int deleteJoin(Map<String, String> hm4) {
	return sqlSession.delete("kr.co.sp04.dao.JoinListDao.deleteJoin", hm4 );
}
public int  editJoin(Map<String, String> hm5) {
	
	return sqlSession.update("kr.co.sp04.dao.JoinListDao.deleteJoin", hm5 );
}

@Override
public String selectTotal(Map<String, String> hm1) {
		int i = sqlSession.selectOne("kr.co.sp04.dao.JoinListDao.selectTotal", hm1 );
		return String.valueOf(i);
	}
}
