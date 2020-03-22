package com.rich.service;

import com.rich.pojo.BuyCar;
import com.rich.pojo.Goods;
import com.rich.pojo.OrderInfo;
import com.rich.pojo.SystemUser;
import com.rich.vo.BuyCarInfo;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface LoginService {

    int selectUserInfo(SystemUser systemUser);

    SystemUser selectInfo(SystemUser systemUser);

    int insertInfo(SystemUser systemUser);

    int updatePasswordInfo(SystemUser systemUser);

    List<Goods> selectAllGoods(Goods goods);

    List<Goods> selectAllArea();

    int insertBuyCar(BuyCar buyCar);

    List<BuyCarInfo> selectBuyCarInfo(BuyCar buyCar);

    List<BuyCarInfo> selectOrderInfo(BuyCar buyCar);

    String selectAllPrice(List<BuyCarInfo> list);

    int deleteBuyCar(int id);

    int settleOrderInfo(OrderInfo orderInfo, HttpServletRequest request);

}
