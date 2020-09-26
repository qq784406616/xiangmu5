package com.liujiaxi.service.impl;

import com.github.pagehelper.PageHelper;

import com.liujiaxi.dao.EmployeeDao;
import com.liujiaxi.service.EmployeeService;
import com.liujiaxi.vo.Employee;

import com.liujiaxi.vo.PageVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    EmployeeDao employeeDao;



    @Override
    public Employee dengLu(Employee employee) {
        return employeeDao.dengLu(employee);
    }

    @Override
    public List<Employee> queryAll1() {
        return employeeDao.queryAll1();
    }

    @Override
    public List<Employee> queryAll(Employee employee,int page, int rows) {
        //放在 查询代码的前面
        PageHelper.startPage(page,rows);

        return employeeDao.queryAll(employee);
    }

    @Override
    public PageVo<Employee> queryAllCount(Employee employee,int page, int rows) {

        PageVo<Employee> pageVo = new PageVo<>();

        //放在 查询代码的前面
        PageHelper.startPage(page,rows);

        pageVo.setRows(employeeDao.queryAll(employee));

        pageVo.setTotal(employeeDao.queryAllCount(employee));

        return pageVo;

    }

    @Override
    public Employee queryByuid(int uid) {
        return employeeDao.queryByuid(uid);
    }

    @Override
    public int addEmployee(Employee employee) {
        return employeeDao.addEmployee(employee);
    }

    @Override
    public int updEmployee(Employee employee) {
        return employeeDao.updEmployee(employee);
    }

    @Override
    public int delEmployee(int id) {
        return employeeDao.delEmployee(id);
    }


}
