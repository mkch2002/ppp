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
import kr.co.sp04.dao.NewsCommentDAO;
import kr.co.sp04.dao.NewsListDAO;

@Repository
public class NewsCommentDAOImpl implements NewsCommentDAO {
	
	@Autowired 
   private SqlSessionTemplate sqlSession;
   private static String namespace = "kr.co.sp04.dao.NewsCommentDao"; 
   private static final Logger logger = LoggerFactory.getLogger(NewsCommentDAOImpl.class);
	   
	public List<HashMap<String,String>> listComment(Map<String, String> hm) {
		   logger.debug("¿©±â´Â BoardDaoImpl");	
		   return sqlSession.selectList(namespace +".listComment", hm );
	}

	@Override
	public int writeComment(Map<String, String> hm) {
	
		return sqlSession.insert("kr.co.sp04.dao.NewsCommentDao.writeComment", hm );

	}

	@Override
	public int deleteComment(Map<String, String> hm) {
		
		return sqlSession.delete("kr.co.sp04.dao.NewsCommentDao.deleteComment", hm );

	}

	@Override
	public int badComment(Map<String, String> hm) {
		int i = sqlSession.update("kr.co.sp04.dao.NewsCommentDao.updateBad", hm );
		if (i > 0 ) {
			return sqlSession.selectOne("kr.co.sp04.dao.NewsCommentDao.badComment", hm );
		} else {
			return 0;	
		}
	}

	@Override
	public int goodComment(Map<String, String> hm) {
		int i = sqlSession.update("kr.co.sp04.dao.NewsCommentDao.updateCnt", hm );
		if (i > 0 ) {
			return sqlSession.selectOne("kr.co.sp04.dao.NewsCommentDao.goodComment", hm );
		} else {
			return 0;	
		}
	}

	@Override
	public int rsaveComment(Map<String, String> hm) {
		return sqlSession.insert("kr.co.sp04.dao.NewsCommentDao.rsaveComment", hm );

	}
}
