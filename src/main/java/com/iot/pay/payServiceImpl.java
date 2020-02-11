package com.iot.pay;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class payServiceImpl implements payService {
	@Autowired
	@Qualifier("payDao")
	payDAO pay;
	@Override
	public int insert(payVO pay) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(payVO pay) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(payVO pay) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<payVO> select(payVO pay) {
		// TODO Auto-generated method stub
		return null;
	}

}
