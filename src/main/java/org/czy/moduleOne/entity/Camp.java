package org.czy.moduleOne.entity;

import java.util.List;

public class Camp {
    private Long campid;
    private String league;

    private List<Hero> heroes;

    public Camp(Long campid, String league, List<Hero> heroes) {
        this.campid = campid;
        this.league = league;
        this.heroes = heroes;
    }

    public Camp(Long campid, String league) {
        this.campid = campid;
        this.league = league;
    }

    public Camp() {

    }

    @Override
    public String toString() {
        return "Camp{" +
                "campid=" + campid +
                ", league='" + league + '\'' +
                ", heroes=" + heroes +
                '}';
    }

    public Long getCampid() {
        return campid;
    }

    public void setCampid(Long campid) {
        this.campid = campid;
    }

    public String getLeague() {
        return league;
    }

    public void setLeague(String league) {
        this.league = league;
    }

    public List<Hero> getHeroes() {
        return heroes;
    }

    public void setHeroes(List<Hero> heroes) {
        this.heroes = heroes;
    }
}
