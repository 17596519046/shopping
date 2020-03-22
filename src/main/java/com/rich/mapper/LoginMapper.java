package com.rich.mapper;
import com.rich.pojo.BuyCar;
import com.rich.pojo.Goods;
import com.rich.pojo.OrderInfo;
import com.rich.pojo.SystemUser;
import com.rich.vo.BuyCarInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LoginMapper {

    int selectUserInfo(SystemUser systemUser);

    SystemUser selectInfo(SystemUser systemUser);

    int insertInfo(SystemUser systemUser);

    int updatePasswordInfo(SystemUser systemUser);

    List<Goods> selectAllGoodsInfo(Goods goods);

    List<Goods> selectCityInfo();

    int insertBuyCar(BuyCar buyCar);

    List<BuyCarInfo> selectBuyCarInfo(BuyCar buyCar);

    List<BuyCarInfo> selectOrderInfo(BuyCar buyCar);

    int deleteBuyCar(int id);

    int insertOrderInfo(OrderInfo orderInfo);

    int updateBatchList(@Param(value = "list") List<BuyCarInfo> buyCars);
}
