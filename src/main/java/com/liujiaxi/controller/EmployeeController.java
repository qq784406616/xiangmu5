package com.liujiaxi.controller;

import com.alibaba.fastjson.JSONObject;
import com.liujiaxi.service.EmployeeService;
import com.liujiaxi.vo.Employee;
import com.liujiaxi.vo.PageVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
public class EmployeeController {

    @Autowired
    EmployeeService employeeService;

    @RequestMapping(value = "/login.do", produces = "text/json;charset=utf-8")
    @ResponseBody
    public String denglu(Employee employee, HttpSession session) {

        //service.查询方法  得到集合
        Employee employee1 = employeeService.dengLu(employee);

        if (employee1 == null) {
            return "登录失败";
        } else {
            session.setAttribute("employee1", employee1);
            System.out.println(employee1);
            return "登录成功";
        }

    }

    //查询所有
    @RequestMapping(value = "/selectqueryall.do")
    @ResponseBody
    public String selectqueryall(Employee employee,@RequestParam(value = "page",defaultValue = "1") int page,
                                         @RequestParam(value = "rows",defaultValue = "5") int rows) {

        //service.查询方法  得到集合
        List<Employee> list = employeeService.queryAll(employee,page,rows);


        return JSONObject.toJSONString(list);
    }

    //查询所有
    @RequestMapping(value = "/selectqueryallcount.do")
    @ResponseBody
    public String selectqueryallcount(Employee employee,@RequestParam(value = "page",defaultValue = "1") int page,
                                         @RequestParam(value = "rows",defaultValue = "5") int rows) {

        //service.查询方法  得到集合
       PageVo<Employee>  list= employeeService.queryAllCount(employee,page,rows);


        return JSONObject.toJSONString(list);

    }



    //添加用户
    @RequestMapping(value = "/register.do",produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String addShopping(Employee employee){
        int num = employeeService.addEmployee(employee);
        if(num==1){
            return "注册成功";
        }else {
            return "注册失败";
        }
    }
    //添加用户
    @RequestMapping(value = "/updateEmployee.do",produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String updateEmployee(Employee employee){
        int num = employeeService.updEmployee(employee);
        if(num==1){
            return "修改成功";
        }else {
            return "修改失败";
        }
    }

    //删除
    @RequestMapping(value = "/delemployee.do",produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String delemployee(int uid){
        int num=employeeService.delEmployee(uid);
        if(num==1){
            return("删除成功");
        }else {
            return("删除失败");
        }

    }

    //根据id查询
    @RequestMapping("/queryByid.do")
    @ResponseBody
    public Map queemployeeId(int uid){
        Map<String,Object> map =new HashMap<String,Object>();
        Employee employee = employeeService.queryByuid(uid);
        if(employee!=null){
            map.put("msg",employee);
        }else {
            map.put("msg",employee);
        }
        return map;
    }


}