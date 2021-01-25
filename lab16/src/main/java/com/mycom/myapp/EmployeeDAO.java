package com.mycom.myapp;
import com.mycom.myapp.EmployeeVO;

import java.util.List;

public interface EmployeeDAO 
{
    public List<EmployeeVO> getAllEmployees();
}