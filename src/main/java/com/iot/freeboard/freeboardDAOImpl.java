package com.iot.freeboard;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("freeboardDao")
public class freeboardDAOImpl implements freeboardDAO {
	@Autowired
	SqlSession sqlsession;
	@Override
	public List<freeboardVO> boardList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(freeboardVO content) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<freeboardVO> categorySearch(String free_brd_type_num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<freeboardVO> searchList(String search) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<freeboardVO> pageList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public freeboardVO read(String free_brd_num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(freeboardVO content) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String free_brd_num) {
		// TODO Auto-generated method stub
		return 0;
	}



}
