package com.iot.freeboard;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	@Qualifier("freeboardDAO")
	
	freeboardDAO dao;
	@Override
	public List<freeboardVO> boardList(String category) {
		// TODO Auto-generated method stub
		List<freeboardVO> list = null;
		if(category!=null) {
			if(category.equals("all")) {
				list=dao.boardList();
			}else {
				list = dao.categorySearch(category);
			}
		}
		return list;
	}

	@Override
	public int txinsert(freeboardVO board) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(freeboardVO board) {
		// TODO Auto-generated method stub
		return dao.insert(board);
	}

	@Override
	public List<freeboardVO> searchList(String search) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<freeboardVO> searchList(String tag, String search) {
		List<freeboardVO> list = null;// TODO Auto-generated method stub
		return list;
	}

	@Override
	public List<freeboardVO> pageList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public freeboardVO read(String board_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(freeboardVO board) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String board_no) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<freeboardVO> findByCategory(String category) {
		// TODO Auto-generated method stub
		return null;
	}

}
