package org.czy.moduleOne.serviceImpl;

import org.czy.moduleOne.dao.CampDao;
import org.czy.moduleOne.dao.HeroDao;
import org.czy.moduleOne.entity.Camp;
import org.czy.moduleOne.entity.Hero;
import org.czy.moduleOne.service.CampService;
import org.czy.moduleOne.service.HeroService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("campService")
public class CampServiceImpl implements CampService {

    @Autowired
    private CampDao campDao;

    @Override
    public List<Camp> getAllCamp() {
        /**
         * @Author Caozy
         * @Date 2018/7/13 10:17
         * @Method getAllCamp
         * @Param []
         * @Return java.util.List<org.czy.moduleOne.entity.Camp>
         * @Declare 获取阵营英雄信息
         */
        return campDao.getAllCamp();
    }
}
