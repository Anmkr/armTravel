package com.example.armtravel.security;


import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;

public class CurrentUser extends User {
    private com.example.armtravel.model.User user;
    public CurrentUser(com.example.armtravel.model.User user){
        super(user.getEmail(),user.getPassword(), user.isVerify(),true, true,
                true,AuthorityUtils.createAuthorityList(user.getType().name()));
        this.user=user;
    }
    public com.example.armtravel.model.User getUser(){
        return user;
    }






        public int getId() {
            return user.getId();
        }


}



