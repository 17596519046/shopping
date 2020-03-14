package com.rich.mapper;
import com.rich.pojo.BuyCar;
import com.rich.pojo.Goods;
import com.rich.pojo.SystemUser;
import com.rich.vo.BuyCarInfo;

import java.util.List;

public interface LoginMapper {

    int selectUserInfo(SystemUser systemUser);

    SystemUser selectInfo(SystemUser systemUser);

    int insertInfo(SystemUser systemUser);

    int updatePasswordInfo(SystemUser systemUser);

    List<Goods> selectAllGoodsInfo();

    int insertBuyCar(BuyCar buyCar);

    List<BuyCarInfo> selectBuyCarInfo(BuyCar buyCar);
}
