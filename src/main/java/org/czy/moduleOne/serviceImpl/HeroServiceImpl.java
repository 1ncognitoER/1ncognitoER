package org.czy.moduleOne.serviceImpl;

import org.czy.moduleOne.dao.HeroDao;
import org.czy.moduleOne.entity.Hero;
import org.czy.moduleOne.service.HeroService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("heroService")
public class HeroServiceImpl implements HeroService {

    /*@Resource*/
    @Autowired
    private HeroDao heroDao;

    /**
     * @Author Caozy
     * @Date 2018/7/12 17:04
     * @Method getHeros
     * @Param []
     * @Return java.util.List<org.czy.moduleOne.entity.Hero>
     * @Declare 获取所有英雄信息
     */
    @Override
    public List<Hero> getHeros() {
        return heroDao.getHeros();
    }
    /**
     * @Author Caozy
     * @Date 2018/7/12 17:03
     * @Method getAll
     * @Param []
     * @Return java.util.List<org.czy.moduleOne.entity.Hero>
     * @Declare 获取所有英雄和联盟信息
     */
    @Override
    public List<Hero> getAll() {
        return heroDao.getAll();
    }
}
