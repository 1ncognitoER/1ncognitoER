package org.czy.moduleOne.action;

import org.apache.struts2.ServletActionContext;
import org.czy.moduleOne.entity.Hero;
import org.czy.moduleOne.service.HeroService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

public class HeroAction {

    /*@Resource*/
    @Autowired
    private HeroService heroService;

    private List<Hero> heroLists;

    /**
     * @Author Caozy
     * @Date 2018/7/13 10:16
     * @Method toCamp
     * @Param []
     * @Return java.lang.String
     * @Declare 跳转阵营页面
     */
    public String toCamp () {
        return "camp";
    }
    /**
     * @Author Caozy
     * @Date 2018/7/12 17:01
     * @Method getHeros
     * @Param []
     * @Return java.lang.String
     * @Declare 获取所有英雄信息
     */
    public String getHeros () {
        HttpServletRequest request = ServletActionContext.getRequest();
        List<Hero> heroList = heroService.getHeros();
        request.setAttribute("heroList", heroList);
        return "index";
    }

    /**
     * @Author Caozy
     * @Date 2018/7/12 17:00
     * @Method toAddInfo
     * @Param []
     * @Return java.lang.String
     * @Declare 跳转添加英雄信息页
     */
    public String toAddInfo () {
        return "addinfo";
    }

    /**
     * @Author Caozy
     * @Date 2018/7/12 16:57
     * @Method getAll
     * @Param []
     * @Return java.lang.String
     * @Declare 获取所有英雄和联盟信息
     */
    public String getAll () {
        heroLists = heroService.getAll();
        return "allinfo";
    }


    public List<Hero> getHeroLists() {
        return heroLists;
    }

    public void setHeroLists(List<Hero> heroLists) {
        this.heroLists = heroLists;
    }

}
