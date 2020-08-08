package com.qf.service.impl;

import com.qf.dao.HouseUserMapper;
import com.qf.pojo.HouseUser;
import com.qf.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private HouseUserMapper houseUserMapper;

    @Override
    public HouseUser login(HouseUser houseUser) {
        return houseUserMapper.login(houseUser);
    }

    @Override
    public void addUser(HouseUser houseUser) {
        houseUserMapper.addUser(houseUser);
    }
}
