package com.iot.comment;

import java.util.List;

public interface cmtService {
	int insert(cmtVO cmt);
	List<cmtVO> readcmt(String brd_num);
}
