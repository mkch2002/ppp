package kr.co.sp04.trydao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.sp04.trydao.TryDAO;

@Repository
public class TryDAOImpl implements TryDAO {

	@Autowired 
	private SqlSessionTemplate sqlSession;
	private static String namespace = "kr.co.sp04.trydao.TryDao"; 
	private static final Logger logger = LoggerFactory.getLogger(TryDAOImpl.class);


	public List<HashMap<String,String>> listTry(Map<String, String> hm1) {
		logger.debug("¿©±â´Â TryDaoImpl");	
		return sqlSession.selectList(namespace +".listTry", hm1 );
	}

	public String selectTotal(Map<String, String> hm1) {
		int i = sqlSession.selectOne("kr.co.sp04.trydao.TryDao.selectTotal", hm1 );
		return String.valueOf(i);
	}

	public Map<String,String> viewTry(Map<String, String> hm3) {

		int i = sqlSession.update("kr.co.sp04.trydao.TryDao.updateCnt", hm3 );
		if (i > 0 ) {
			return sqlSession.selectOne("kr.co.sp04.trydao.TryDao.viewTry", hm3 );
		} else {
			return null;	
		}
	}

	public int deleteTry(Map<String, String> hm4) {
		return sqlSession.delete("kr.co.sp04.trydao.TryDao.deleteTry", hm4 );
	}

	public int writeTry(Map<String, String> hm) {

		return sqlSession.insert("kr.co.sp04.trydao.TryDao.writeTry", hm );

	}

	public int  editTry(Map<String, String> hm5) {

		return sqlSession.update("kr.co.sp04.trydao.TryDao.editTry", hm5 );
	}
}


