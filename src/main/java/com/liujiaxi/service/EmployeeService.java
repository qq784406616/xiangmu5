package com.liujiaxi.service;

import com.liujiaxi.dao.EmployeeDao;
import com.liujiaxi.vo.Employee;
import com.liujiaxi.vo.PageVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;


public interface EmployeeService {

    //登录
    public Employee dengLu(Employee employee);
    //查询所有用户信息
    public List<Employee> queryAll1();
    //查询全部
    public List<Employee> queryAll(Employee employee,int page, int rows);
    public PageVo<Employee> queryAllCount(Employee employee,int page, int rows);

    //根据id查询
    public Employee queryByuid(int uid);


    //添加用户
    public int addEmployee(Employee employee);

    //用户修改
    public int updEmployee(Employee employee);

    //根据主键删除用户信息
    public int delEmployee(int id);


}
