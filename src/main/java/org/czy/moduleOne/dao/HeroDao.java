package org.czy.moduleOne.dao;

import org.czy.moduleOne.entity.Hero;

import java.util.List;

public interface HeroDao {
    /**
     * @Author Caozy
     * @Date 2018/7/12 17:03
     * @Method getHeros
     * @Param []
     * @Return java.util.List<org.czy.moduleOne.entity.Hero>
     * @Declare 获取所有英雄信息
     */
    public List<Hero> getHeros();
    /**
     * @Author Caozy
     * @Date 2018/7/12 17:01
     * @Method getAll
     * @Param []
     * @Return java.util.List<org.czy.moduleOne.entity.Hero>
     * @Declare 获取所有英雄和联盟信息
     */
    public List<Hero> getAll();
}
