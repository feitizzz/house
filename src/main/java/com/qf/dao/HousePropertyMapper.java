package com.qf.dao;

import com.qf.pojo.HouseProperty;
import com.qf.pojo.HousePropertyExample;
import com.qf.vo.SelectVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface HousePropertyMapper {
    long countByExample(HousePropertyExample example);

    int deleteByExample(HousePropertyExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(HouseProperty record);

    int insertSelective(HouseProperty record);

    List<HouseProperty> selectByExample(HousePropertyExample example);

    HouseProperty selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") HouseProperty record, @Param("example") HousePropertyExample example);

    int updateByExample(@Param("record") HouseProperty record, @Param("example") HousePropertyExample example);

    int updateByPrimaryKeySelective(HouseProperty record);

    int updateByPrimaryKey(HouseProperty record);

    List<HouseProperty> findAll(SelectVo selectVo);
}