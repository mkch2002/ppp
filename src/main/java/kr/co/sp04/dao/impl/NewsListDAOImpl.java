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
import kr.co.sp04.dao.NewsListDAO;

@Repository
public class NewsListDAOImpl implements NewsListDAO {

	@Autowired 
	private SqlSessionTemplate sqlSession;
	private static String namespace = "kr.co.sp04.dao.NewsListDao"; 
	private static final Logger logger = LoggerFactory.getLogger(NewsListDAOImpl.class);

	public List<HashMap<String,String>> listNews(Map<String, String> hm) {
		logger.debug("¿©±â´Â BoardDaoImpl");	
		return sqlSession.selectList(namespace +".listNews", hm );
	}

	public int writeNews(Map<String, String> hm) {

		return sqlSession.insert("kr.co.sp04.dao.NewsListDao.writeNews", hm );

	}

	public Map<String,String> viewNews(Map<String, String> hm) {

		int i = sqlSession.update("kr.co.sp04.dao.NewsListDao.updateCnt", hm );
		if (i > 0 ) {
			return sqlSession.selectOne("kr.co.sp04.dao.NewsListDao.viewNews", hm );
		} else {
			return null;	
		}
	}

	public int deleteNews(Map<String, String> hm) {

		return sqlSession.delete("kr.co.sp04.dao.NewsListDao.deleteNews", hm );

	}

	@Override
	public String selectTotal(Map<String, String> hm) {

		int i = sqlSession.selectOne("kr.co.sp04.dao.NewsListDao.selectTotal", hm );
		return String.valueOf(i);
	}

	@Override
	public List<HashMap<String, String>> rlistNews(Map<String, String> hm) {

		return sqlSession.selectList(namespace +".rlistNews", hm );
	}
}
