package org.czy.moduleOne.dao;

import org.czy.moduleOne.entity.Camp;

import java.util.List;

public interface CampDao {
    /**
     * @Author Caozy
     * @Date 2018/7/13 10:17
     * @Method getAllCamp
     * @Param []
     * @Return java.util.List<org.czy.moduleOne.entity.Camp>
     * @Declare 获取阵营英雄信息
     */
    public List<Camp> getAllCamp();
}
