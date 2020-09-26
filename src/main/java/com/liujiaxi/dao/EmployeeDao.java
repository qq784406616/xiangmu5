package com.liujiaxi.dao;

import com.liujiaxi.vo.Employee;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EmployeeDao {

    //登录
    public Employee dengLu(Employee employee);

    //查询所有用户信息
    public List<Employee> queryAll1();

    //查询所有用户信息  查询条件
    public List<Employee> queryAll(Employee employee);
    //查询所有用户信息  查询条件次数
    public int queryAllCount(Employee employee);

    //根据id查询
    public Employee queryByuid(int uid);

    //添加
    public int addEmployee(Employee employee);

    //修改
    public int updEmployee(Employee employee);

    //删除用户信息
    public int delEmployee(int id);

}
