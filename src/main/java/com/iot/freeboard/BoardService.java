package com.iot.freeboard;

import java.util.List;

public interface BoardService {
	//게시글 조회 - 전체 조회 및 카테고리별 조회작업
	List<freeboardVO> boardList(String category);
	int txinsert(freeboardVO board);
	int insert(freeboardVO board);
	List<freeboardVO> searchList(String search);
	List<freeboardVO> searchList(String tag,String search);
	List<freeboardVO> pageList();
	freeboardVO read(String board_no);
	int update(freeboardVO board);
	int delete(String board_no);
	
	
	List<freeboardVO> findByCategory(String category);
	
}









