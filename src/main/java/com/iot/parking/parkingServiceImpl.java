package com.iot.parking;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;



@Service
public class parkingServiceImpl implements parkingService {
	@Autowired
	@Qualifier("parkingDao")
	parkingDAO dao;
	
	@Override
	public List<parkingVO> select() {
		System.out.println("parkingServiceImpl 호출 됌");
		return dao.select();
		//mapper, DAO, service 했고 이제 컨트롤러
	}

}
