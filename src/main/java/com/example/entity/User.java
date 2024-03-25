package com.example.entity;

public class User {
    private Integer user_id;
    private String username;
    private String password;
    private Integer gender;
    private String QQ;
    private String email;
    private String icon;
    private String mobile;
    private Integer user_type;
    private Integer user_group_id;
    private Integer is_valid;
    private Integer insert_time;
    private String motto;

    public String getMotto() {
        return motto;
    }

    public void setMotto(String motto) {
        this.motto = motto;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

    public String getQQ() {
        return QQ;
    }

    public void setQQ(String QQ) {
        this.QQ = QQ;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public Integer getUser_type() {
        return user_type;
    }

    public void setUser_type(Integer user_type) {
        this.user_type = user_type;
    }

    public Integer getUser_group_id() {
        return user_group_id;
    }

    public void setUser_group_id(Integer user_group_id) {
        this.user_group_id = user_group_id;
    }

    public Integer getIs_valid() {
        return is_valid;
    }

    public void setIs_valid(Integer is_valid) {
        this.is_valid = is_valid;
    }

    public Integer getInsert_time() {
        return insert_time;
    }

    public void setInsert_time(Integer insert_time) {
        this.insert_time = insert_time;
    }



    @Override
    public String toString() {
        return "User{" +
                "user_id=" +  user_id+
               ",username='"+username+'\''+
                ",password='"+password+'\''+
                ",gender ='"+ gender +'\''+
                ",QQ ='"+  QQ+'\''+
                ",email ='"+  email+'\''+
                ",icon ='"+  icon +'\''+
                ",motto ='"+  motto+'\''+
                " ,mobile='"+  mobile+'\''+
                " ,user_type='"+  user_type+'\''+
                ",user_group_id ='"+  user_group_id+'\''+
                " ,is_valid='"+ is_valid +'\''+
                ",insert_time ='"+  insert_time+'\''+
                '}';
    }
}
