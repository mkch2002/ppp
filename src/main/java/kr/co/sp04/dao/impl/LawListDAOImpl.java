package kr.co.sp04.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.co.sp04.cmm.DBConnection;
import kr.co.sp04.dao.LawListDAO;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.apache.ibatis.session.SqlSession; 
import org.mybatis.spring.SqlSessionTemplate;


@Repository
public class LawListDAOImpl implements LawListDAO {

	@Autowired 
	   private SqlSessionTemplate sqlSession;
	   private static String namespace = "kr.co.sp04.dao.LawListDao"; 
	   private static final Logger logger = LoggerFactory.getLogger(LawListDAOImpl.class);


	   public List<HashMap<String,String>> listLaw(Map<String, String> hm1) {
		   logger.debug("¿©±â´Â BoardDaoImpl");	
		   return sqlSession.selectList(namespace +".listLaw", hm1 );
	   }
	
public int  writeLaw(Map<String, String> hm2) {
	
	return sqlSession.insert("kr.co.sp04.dao.LawListDao.writeLaw", hm2 );
		
	}	

public Map<String,String> viewLaw(Map<String, String> hm3) {
	
	int i = sqlSession.update("kr.co.sp04.dao.LawListDao.updateCnt", hm3 );
	if (i > 0 ) {
		return sqlSession.selectOne("kr.co.sp04.dao.LawListDao.viewLaw", hm3 );
	} else {
		return null;	
	}
}

public int deleteLaw(Map<String, String> hm4) {
	return sqlSession.delete("kr.co.sp04.dao.LawListDao.deleteLaw", hm4 );
}
public int  editLaw(Map<String, String> hm5) {
	
	return sqlSession.update("kr.co.sp04.dao.LawListDao.deleteLaw", hm5 );
}

@Override
public String selectTotal(Map<String, String> hm1) {
		int i = sqlSession.selectOne("kr.co.sp04.dao.LawListDao.selectTotal", hm1 );
		return String.valueOf(i);
	}
}
