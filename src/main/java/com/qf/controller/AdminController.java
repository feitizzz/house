package com.qf.controller;

import com.qf.pojo.HouseUser;
import com.qf.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@RestController
@RequestMapping("admin")
public class AdminController {

    @Autowired
    private UserService userService;

    @RequestMapping("login")
    @ResponseBody
    public HouseUser login(HouseUser houseUser, HttpServletRequest request){

        houseUser = userService.login(houseUser);
        if (houseUser!=null){
            System.out.println(houseUser);
            request.getSession().setAttribute("user",houseUser);
        }
        return houseUser;
    }

    @RequestMapping("addUser")
    @ResponseBody
    public void addUser(HouseUser houseUser, HttpServletRequest request){
        userService.addUser(houseUser);
        request.getSession().setAttribute("houseUser",houseUser);
    }

}
