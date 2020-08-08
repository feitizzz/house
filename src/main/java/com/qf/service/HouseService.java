package com.qf.service;

import com.qf.pojo.HouseProperty;
import com.qf.vo.SelectVo;

import java.util.List;

public interface HouseService {

    List<HouseProperty> findAll(SelectVo selectVo);
}
