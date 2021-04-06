package kr.co.sp04.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.apache.ibatis.session.SqlSession; 
import org.mybatis.spring.SqlSessionTemplate;

import kr.co.sp04.cmm.DBConnection;
import kr.co.sp04.dao.HistoryListDAO;

@Repository
public class HistoryListDAOImpl implements HistoryListDAO {

	@Autowired 
	   private SqlSessionTemplate sqlSession;
	   private static String namespace = "kr.co.sp04.dao.HistoryListDao"; 
	   private static final Logger logger = LoggerFactory.getLogger(HistoryListDAOImpl.class);


	   public List<HashMap<String,String>> listHistory(Map<String, String> hm1) {
		   logger.debug("¿©±â´Â BoardDaoImpl");	
		   return sqlSession.selectList(namespace +".listHistory", hm1 );
	   }
	
public int  writeHistory(Map<String, String> hm2) {
	
	return sqlSession.insert("kr.co.sp04.dao.HistoryListDao.writeHistory", hm2 );
		
	}	

public Map<String,String> viewHistory(Map<String, String> hm3) {
	
	int i = sqlSession.update("kr.co.sp04.dao.HistoryListDao.updateCnt", hm3 );
	if (i > 0 ) {
		return sqlSession.selectOne("kr.co.sp04.dao.HistoryListDao.viewHistory", hm3 );
	} else {
		return null;	
	}
}

public int deleteHistory(Map<String, String> hm4) {
	return sqlSession.delete("kr.co.sp04.dao.HistoryListDao.deleteHistory", hm4 );
}
public int  editHistory(Map<String, String> hm5) {
	
	return sqlSession.update("kr.co.sp04.dao.HistoryListDao.deleteHistory", hm5 );
}

@Override
public String selectTotal(Map<String, String> hm1) {
		int i = sqlSession.selectOne("kr.co.sp04.dao.HistoryListDao.selectTotal", hm1 );
		return String.valueOf(i);
	}
}
