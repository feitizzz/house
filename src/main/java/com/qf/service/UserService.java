package com.qf.service;

import com.qf.pojo.HouseUser;

public interface UserService {
    HouseUser login(HouseUser houseUser);

    void addUser(HouseUser houseUser);
}
