package com.qf.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qf.pojo.HouseProperty;
import com.qf.service.HouseService;
import com.qf.vo.SelectVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("house")
public class HouseController {

    @Autowired
    private HouseService houseService;

    @RequestMapping("findAll")
    public Map findAll(Integer page, Integer limit,String searchType,String title) {
        SelectVo selectVo=null;
        if(searchType!=null && searchType!="" && title!=null && title!=""){
            selectVo=new SelectVo();
            if(searchType.equals("username")){
                selectVo.setUsername(title);
            }
            if (searchType.equals("num")){
                selectVo.setNum(title);
            }
        }

        PageHelper.startPage(page, limit);

        List<HouseProperty> house = houseService.findAll(selectVo);

        PageInfo<HouseProperty> pageInfo = new PageInfo<>(house);

//        System.out.println(pageInfo.getList());

        HashMap<String, Object> map = new HashMap<>();
        map.put("code", 0);
        map.put("msg", "");
        map.put("count", pageInfo.getTotal());//总记录数
        map.put("data", pageInfo.getList());//分页数据

        return map;
    }


}
