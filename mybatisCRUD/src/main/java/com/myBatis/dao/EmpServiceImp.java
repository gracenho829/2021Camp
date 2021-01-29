package com.myBatis.dao;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myBatis.beans.emp;

@Service
public class EmpServiceImp implements EmpService{
	
	@Autowired
	 private EmpDAO dao;
	
	@Override
	 public int insertCafe(emp emp){
	  // TODO Auto-generated method stub
		return dao.insertCafe(emp);
	 }

	 @Override
	 public List<emp> selectCafes() {
	  // TODO Auto-generated method stub
		 return dao.selectCafes();
	 }

	@Override
	public int deleteCafe(emp emp) {
		// TODO Auto-generated method stub
		return dao.deleteCafe(emp);
	}

	@Override
	public int updateCafe(emp emp) {
		// TODO Auto-generated method stub
		return dao.updateCafe(emp);
		
	}

	@Override
	public emp selectCafe(int id) {
		// TODO Auto-generated method stub
		return dao.selectCafe(id);
	}
	
}
