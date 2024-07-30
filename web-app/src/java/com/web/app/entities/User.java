
package com.web.app.entities;

public class User {
    private int id;
    private String name;
    private String email;
    private String password;
    private String gender;
    private String profile;
    
    public User() {
        
    }
    
    public User(int id,String name, String email, String password, String gender,String profile) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.gender = gender;
        this.profile = profile;
    }
    public User(String name, String email, String password, String gender,String profile) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.gender = gender;
        this.profile = profile;

    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
    
    public int getId() {
        return id;
    }

    public int setId(int aInt) {
        return id;
    }
    
    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }
    
}
