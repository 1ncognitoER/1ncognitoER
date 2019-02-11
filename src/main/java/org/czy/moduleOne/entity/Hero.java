package org.czy.moduleOne.entity;

public class Hero {
    private Long heroid;
    private String name;
    private String role;
    private Long campcode;

    private Camp camp;

    @Override
    public String toString() {
        return "Hero{" +
                "heroid=" + heroid +
                ", name='" + name + '\'' +
                ", role='" + role + '\'' +
                ", campcode=" + campcode +
                ", camp=" + camp +
                '}';
    }

    public Hero() {
    }

    public Hero(Long heroid, String name, String role, Long campcode) {

        this.heroid = heroid;
        this.name = name;
        this.role = role;
        this.campcode = campcode;
    }

    public Hero(Long heroid, String name, String role, Camp camp) {
        this.heroid = heroid;
        this.name = name;
        this.role = role;
        this.camp = camp;
    }

    public Hero(Long heroid, String name, String role, Long campcode, Camp camp) {
        this.heroid = heroid;
        this.name = name;
        this.role = role;
        this.campcode = campcode;
        this.camp = camp;
    }

    public Long getHeroid() {
        return heroid;
    }

    public void setHeroid(Long heroid) {
        this.heroid = heroid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public Long getCampcode() {
        return campcode;
    }

    public void setCampcode(Long campcode) {
        this.campcode = campcode;
    }

    public Camp getCamp() {
        return camp;
    }

    public void setCamp(Camp camp) {
        this.camp = camp;
    }
}
