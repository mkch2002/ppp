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

import kr.co.sp04.cmm.BoardJoinVO;
import kr.co.sp04.cmm.DBConnection;
import kr.co.sp04.dao.CouncilListDAO;
import kr.co.sp04.dao.CouncilListDAO;

@Repository
public class CouncilListDAOImpl implements CouncilListDAO {

	@Autowired 
	private SqlSessionTemplate sqlSession;
	private static String namespace = "kr.co.sp04.dao.CouncilListDao"; 
	private static final Logger logger = LoggerFactory.getLogger(CouncilListDAOImpl.class);


	public List<HashMap<String,String>> listCouncil(Map<String, String> hm1) {
		logger.debug("¿©±â´Â BoardDaoImpl");	
		return sqlSession.selectList(namespace +".listCouncil", hm1 );
	}

	public int  writeCouncil(Map<String, String> hm2) {

		return sqlSession.insert("kr.co.sp04.dao.CouncilListDao.writeCouncil", hm2 );

	}	

	public Map<String,String> viewCouncil(Map<String, String> hm3) {

		int i = sqlSession.update("kr.co.sp04.dao.CouncilListDao.updateCnt", hm3 );
		if (i > 0 ) {
			return sqlSession.selectOne("kr.co.sp04.dao.CouncilListDao.viewCouncil", hm3 );
		} else {
			return null;	
		}
	}

	public int deleteCouncil(Map<String, String> hm4) {
		return sqlSession.delete("kr.co.sp04.dao.CouncilListDao.deleteCouncil", hm4 );
	}
	
	public int  editCouncil(Map<String, String> hm5) {

		return sqlSession.update("kr.co.sp04.dao.CouncilListDao.deleteCouncil", hm5 );
	}

	public String selectTotal(Map<String, String> hm1) {
		int i = sqlSession.selectOne("kr.co.sp04.dao.CouncilListDao.selectTotal", hm1 );
		return String.valueOf(i);
	}
}

