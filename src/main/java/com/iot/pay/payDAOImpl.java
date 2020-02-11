package com.iot.pay;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository("payDao")
public class payDAOImpl implements payDAO {
	SqlSession sqlsession;
	@Override
	public int insert(payVO pay) {
		// TODO Auto-generated method stub
		return sqlsession.insert("com.iot.pay.insert", pay);
	}

	@Override
	public int delete(payVO pay) {
		// TODO Auto-generated method stub
		return sqlsession.insert("com.iot.pay.delete", pay);
	}

	@Override
	public int update(payVO pay) {
		// TODO Auto-generated method stub
		return sqlsession.insert("com.iot.pay.update", pay);
	}

	@Override
	public List<payVO> select(payVO pay) {
		// TODO Auto-generated method stub
		return sqlsession.selectList("com.iot.pay.select", pay);
	}

}
