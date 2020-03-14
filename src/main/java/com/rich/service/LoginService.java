package com.rich.service;

import com.rich.pojo.BuyCar;
import com.rich.pojo.Goods;
import com.rich.pojo.SystemUser;
import com.rich.vo.BuyCarInfo;

import java.util.List;

public interface LoginService {

    int selectUserInfo(SystemUser systemUser);

    SystemUser selectInfo(SystemUser systemUser);

    int insertInfo(SystemUser systemUser);

    int updatePasswordInfo(SystemUser systemUser);

    List<Goods> selectAllGoods();

    int insertBuyCar(BuyCar buyCar);

    List<BuyCarInfo> selectBuyCarInfo(BuyCar buyCar);

}
