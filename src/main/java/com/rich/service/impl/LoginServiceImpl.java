package com.rich.service.impl;

import com.rich.mapper.LoginMapper;
import com.rich.pojo.User;
import com.rich.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoginServiceImpl implements LoginService{

    @Autowired
    private LoginMapper loginMapper;

    @Override
    public List<User> selectAll() {
        System.out.println(123);
        return loginMapper.selectAll();
    }
}
