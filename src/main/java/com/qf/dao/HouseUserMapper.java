package com.qf.dao;

import com.qf.pojo.HouseUser;
import com.qf.pojo.HouseUserExample;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface HouseUserMapper {


    int insert(HouseUser record);

    int insertSelective(HouseUser record);

    HouseUser login(HouseUser houseUser);

    void addUser(HouseUser houseUser);
}