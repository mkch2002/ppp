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
import kr.co.sp04.dao.VocListDAO;
import kr.co.sp04.dao.VocListDAO;

@Repository
public class VocListDAOImpl implements VocListDAO {

	@Autowired 
	   private SqlSessionTemplate sqlSession;
	   private static String namespace = "kr.co.sp04.dao.VocListDao"; 
	   private static final Logger logger = LoggerFactory.getLogger(VocListDAOImpl.class);


	   public List<HashMap<String,String>> listVoc(Map<String, String> hm1) {
		   logger.debug("여기는 BoardDaoImpl");	
		   return sqlSession.selectList(namespace +".listVoc", hm1 );
	   }
	
public int  writeVoc(Map<String, String> hm2) {
	
	return sqlSession.insert("kr.co.sp04.dao.VocListDao.writeVoc", hm2 );
		
	}	

public Map<String,String> viewVoc(Map<String, String> hm3) {
	
	int i = sqlSession.update("kr.co.sp04.dao.VocListDao.updateCnt", hm3 );
	if (i > 0 ) {
		return sqlSession.selectOne("kr.co.sp04.dao.VocListDao.viewVoc", hm3 );
	} else {
		return null;	
	}
}

public int deleteVoc(Map<String, String> hm4) {
	return sqlSession.delete("kr.co.sp04.dao.VocListDao.deleteVoc", hm4 );
}
public int  editVoc(Map<String, String> hm5) {
	
	return sqlSession.update("kr.co.sp04.dao.VocListDao.deleteVoc", hm5 );
}

@Override
public String selectTotal(Map<String, String> hm1) {
		int i = sqlSession.selectOne("kr.co.sp04.dao.VocListDao.selectTotal", hm1 );
		return String.valueOf(i);
	}
}
