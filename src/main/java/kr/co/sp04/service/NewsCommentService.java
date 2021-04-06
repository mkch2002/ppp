package kr.co.sp04.service;

import java.util.List;
import java.util.Map;

import kr.co.sp04.cmm.BoardJoinVO;

import java.util.HashMap;

public interface NewsCommentService {

	public List<HashMap<String, String>> listComment(Map<String, String> hm);

	public int writeComment(Map<String, String> hm);

	public int deleteComment(Map<String, String> hm);

	public int badComment(Map<String, String> hm);

	public int goodComment(Map<String, String> hm);

	public int rsaveComment(Map<String, String> hm);

	}
