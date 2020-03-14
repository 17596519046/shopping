package com.rich.service.impl;

import com.rich.mapper.LoginMapper;
import com.rich.pojo.BuyCar;
import com.rich.pojo.Goods;
import com.rich.pojo.SystemUser;
import com.rich.service.LoginService;
import com.rich.vo.BuyCarInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class LoginServiceImpl implements LoginService{

    @Autowired
    private LoginMapper loginMapper;

    /***
     * 查询某一用户信息
     * @param systemUser
     * @return
     */
    @Override
    public int selectUserInfo(SystemUser systemUser) {
        return loginMapper.selectUserInfo(systemUser);
    }

    @Override
    public SystemUser selectInfo(SystemUser systemUser) {
        return loginMapper.selectInfo(systemUser);
    }

    /***
     * 新增用户
     * @param systemUser
     * @return
     */
    @Override
    public int insertInfo(SystemUser systemUser) {
        Date date = new Date();
        systemUser.setCreateTime(date);
        systemUser.setUpdateTime(date);
        return loginMapper.insertInfo(systemUser);
    }

    /***
     * 修改密码信息
     * @param systemUser
     * @return
     */
    @Override
    public int updatePasswordInfo(SystemUser systemUser) {
        return loginMapper.updatePasswordInfo(systemUser);
    }

    @Override
    public List<Goods> selectAllGoods() {
        return loginMapper.selectAllGoodsInfo();
    }

    /***
     * 加入购物车
     * @param buyCar
     * @return
     */
    @Override
    public int insertBuyCar(BuyCar buyCar) {
        Date date = new Date();
        buyCar.setCreateTime(date);
        buyCar.setUpdateTime(date);
        return loginMapper.insertBuyCar(buyCar);
    }

    /***
     * 查询购物车详情
     * @param buyCar
     * @return
     */
    @Override
    public List<BuyCarInfo> selectBuyCarInfo(BuyCar buyCar) {
        return loginMapper.selectBuyCarInfo(buyCar);
    }
}
