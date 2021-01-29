package com.myBatis.dao;

import java.util.List;


import com.myBatis.beans.emp;

public interface EmpService {
	public int insertCafe(emp emp);
	public int deleteCafe(emp emp);
	public int updateCafe(emp emp);
	public emp selectCafe(int id);
	public List<emp> selectCafes();
}
