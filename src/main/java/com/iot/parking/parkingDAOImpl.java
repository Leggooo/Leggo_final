package com.iot.parking;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("parkingDao")
public class parkingDAOImpl implements parkingDAO {
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<parkingVO> select() {
		//mapper에 담겨있는 SQL문을 오라클에 실행해라
									//mapper namespace.id명
		System.out.println("parkingDAOImpl 호출 됌");
		return sqlSession.selectList("com.iot.parking.ploc");
	}
	

}
