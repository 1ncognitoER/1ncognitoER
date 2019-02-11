package org.czy.moduleOne.action;

import org.apache.struts2.ServletActionContext;
import org.czy.moduleOne.entity.Camp;
import org.czy.moduleOne.entity.Hero;
import org.czy.moduleOne.service.CampService;
import org.czy.moduleOne.service.HeroService;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class CampAction {

    @Autowired
    private CampService campService;

    private List<Camp> campList;

    /**
     * @Author Caozy
     * @Date 2018/7/13 10:15
     * @Method getAllCamp
     * @Param []
     * @Return java.lang.String
     * @Declare 获取阵营英雄信息
     */
    public String getAllCamp () {
        campList = campService.getAllCamp();
        return "campinfo";
    }

    public List<Camp> getCampList() {
        return campList;
    }

    public void setCampList(List<Camp> campList) {
        this.campList = campList;
    }
}
