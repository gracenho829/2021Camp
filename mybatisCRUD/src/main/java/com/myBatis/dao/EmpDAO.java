package com.myBatis.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myBatis.beans.emp;

@Repository
public class EmpDAO {

		@Autowired
		SqlSessionTemplate sqlSession;
		public int insertCafe(emp emp) {
			int result = sqlSession.insert("Cafes.Insert", emp);
			return result;
		}
		public int deleteCafe(emp emp) {
			int result = sqlSession.insert("Cafes.Delete", emp);
			return result;
		}
		public int updateCafe(emp emp) {
			int result = sqlSession.insert("Cafes.Update", emp);
			return result;
		}
		public emp selectCafe(int id) {
			return sqlSession.selectOne("Cafes.Select", id);
		}
		public List<emp> selectCafes(){
			return sqlSession.selectList("Cafes.SelectList");
	}

}
