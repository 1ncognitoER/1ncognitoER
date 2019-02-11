package org.czy.moduleOne.service;

import org.czy.moduleOne.entity.Hero;

import java.util.List;

public interface HeroService {
    /**
     * @Author Caozy
     * @Date 2018/7/12 17:02
     * @Method getHeros
     * @Param []
     * @Return java.util.List<org.czy.moduleOne.entity.Hero>
     * @Declare 获取所有英雄信息
     */
    public List<Hero> getHeros();
    /**
     * @Author Caozy
     * @Date 2018/7/12 17:02
     * @Method getAll
     * @Param []
     * @Return java.util.List<org.czy.moduleOne.entity.Hero>
     * @Declare 获取所有英雄和联盟信息
     */
    public List<Hero> getAll();
}
