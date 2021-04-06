package kr.co.sp04.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.co.sp04.cmm.BoardJoinVO;
import kr.co.sp04.service.NewsVO;

public interface NewsCommentDAO {

	public List<HashMap<String,String>> listComment(Map<String, String> hm1);

	public int writeComment(Map<String, String> hm7);

	public int deleteComment(Map<String, String> hm8);

	public int badComment(Map<String, String> hm10);

	public int goodComment(Map<String, String> hm9);

	public int rsaveComment(Map<String, String> hm11);
	
}
