package com.rich.mapper;
import com.rich.pojo.*;
import com.rich.vo.BuyCarInfo;
import com.rich.vo.OrderInfoDTO;
import org.apache.ibatis.annotations.Param;
import org.springframework.core.annotation.Order;

import java.util.List;

public interface LoginMapper {

    int insertEvaluate(EvaluateInner evaluateInner);

    List<EvaluateInnerVO> selectEvaluate(EvaluateInner evaluateInner);

    int cancelOrder(OrderInfo orderInfo);

    int selectUserInfo(SystemUser systemUser);

    SystemUser selectInfo(SystemUser systemUser);

    int insertInfo(SystemUser systemUser);

    int insertAddressInfo(AddressInfo addressInfo);

    int updateAddressInfo(AddressInfo addressInfo);

    int updateDefaultAddress(AddressInfo addressInfo);

    int deleteAddressInfo(AddressInfo addressInfo);

    List<AddressInfo> selectListAddress(int id);

    AddressInfo selectAddressInfo(AddressInfo addressInfo);

    AddressInfo selectAddressMyself(AddressInfo addressInfo);

    int updatePasswordInfo(SystemUser systemUser);

    List<Goods> selectAllGoodsInfo(Goods goods);

    List<Goods> selectCityInfo();

    int updateMyself(SystemUser systemUser);

    int insertBuyCar(BuyCar buyCar);

    List<BuyCarInfo> selectBuyCarInfo(BuyCar buyCar);

    List<BuyCarInfo> selectOrderDetails(BuyCar buyCar);

    List<OrderInfoDTO> selectOrderInfo(BuyCar buyCar);

    List<OrderGoods> selectOrderGoodsInfo(OrderInfo orderInfo);

    int deleteBuyCar(int id);

    int insertOrderInfo(OrderInfo orderInfo);

    int updateBatchList(@Param(value = "list") List<BuyCarInfo> buyCars);
}
