package com.qf.service.impl;

import com.qf.dao.HousePropertyMapper;
import com.qf.pojo.HouseProperty;
import com.qf.service.HouseService;
import com.qf.vo.SelectVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HouseServiceImpl implements HouseService {

    @Autowired
    private HousePropertyMapper housePropertyMapper;

    @Override
    public List<HouseProperty> findAll(SelectVo selectVo) {
        return housePropertyMapper.findAll(selectVo);
    }
}
