package com.rich.service;
import com.rich.pojo.*;
import com.rich.vo.BuyCarInfo;
import com.rich.vo.OrderInfoDTO;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface LoginService {

    int selectUserInfo(SystemUser systemUser);

    SystemUser selectInfo(SystemUser systemUser);

    int insertEvaluate(EvaluateInner evaluateInner);

    List<EvaluateInnerVO> selectListEvaluate(EvaluateInner evaluateInner);

    int cancelOrder(OrderInfo orderInfo);

    int insertInfo(SystemUser systemUser);

    int insertAddressInfo(AddressInfo addressInfo);

    int updateAddressInfo(AddressInfo addressInfo);

    int deleteAddressInfo(AddressInfo addressInfo);

    List<AddressInfo> selectListAddressInfo(int id);

    AddressInfo selectAddressInfo(AddressInfo addressInfo);

    AddressInfo selectAddressMyselfInfo(AddressInfo addressInfo);

    int updateInfo(SystemUser systemUser);

    int updatePasswordInfo(SystemUser systemUser);

    List<Goods> selectAllGoods(Goods goods);

    List<Goods> selectAllArea();

    int insertBuyCar(BuyCar buyCar);

    List<BuyCarInfo> selectBuyCarInfo(BuyCar buyCar);

    List<OrderGoods> selectOrderGoods(OrderInfo orderInfo);

    List<BuyCarInfo> selectOrderDetails(BuyCar buyCar);

    List<OrderInfoDTO> selectOrderInfo(BuyCar buyCar);

    String selectAllPrice(List<BuyCarInfo> list);

    int deleteBuyCar(int id);

    int settleOrderInfo(OrderInfo orderInfo, HttpServletRequest request);

}
