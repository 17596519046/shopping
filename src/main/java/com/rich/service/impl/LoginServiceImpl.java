package com.rich.service.impl;

import com.rich.mapper.LoginMapper;
import com.rich.pojo.BuyCar;
import com.rich.pojo.Goods;
import com.rich.pojo.OrderInfo;
import com.rich.pojo.SystemUser;
import com.rich.service.LoginService;
import com.rich.vo.BuyCarInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    private LoginMapper loginMapper;
    SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");


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

    /***
     * 查询所有的特色商品
     * @param goods
     * @return
     */
    @Override
    public List<Goods> selectAllGoods(Goods goods) {
        return loginMapper.selectAllGoodsInfo(goods);
    }

    /***
     * 查询所有的特色产品的城市
     * @return
     */
    @Override
    public List<Goods> selectAllArea() {
        return loginMapper.selectCityInfo();
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

    @Override
    public List<BuyCarInfo> selectOrderInfo(BuyCar buyCar) {
        return loginMapper.selectOrderInfo(buyCar);
    }

    /***
     * 计算购物车总金额
     * @param list
     * @return
     */
    @Override
    public String selectAllPrice(List<BuyCarInfo> list) {
        if (null != list) {
            BigDecimal price = new BigDecimal("0.00");
            for (BuyCarInfo vo : list) {
                if (null != vo.getPrice()) {
                    String money = vo.getPrice();
                    int num = vo.getNum();
                    BigDecimal b = new BigDecimal(money);
                    BigDecimal number = new BigDecimal(num);
                    BigDecimal mon = number.multiply(b).setScale(2, BigDecimal.ROUND_HALF_UP);
                    price = price.add(mon).setScale(2, BigDecimal.ROUND_HALF_UP);
                }
            }
            return price.toString();
        }
        return "0.00";
    }

    /***
     * 删除购物车商品信息
     * @param id
     * @return
     */
    @Override
    public int deleteBuyCar(int id) {
        return loginMapper.deleteBuyCar(id);
    }

    /****
     * 购物车结算并生成订单
     * @param orderInfo
     * @param request
     * @return
     */
    @Override
    public int settleOrderInfo(OrderInfo orderInfo, HttpServletRequest request) {
        String code = "YU" + format.format(new Date()) + "" + String.valueOf(Math.random()).substring(2, 5);
        SystemUser systemUser = (SystemUser) request.getSession().getAttribute("user");
        BuyCar buyCar = new BuyCar();
        buyCar.setUserId(systemUser.getId());
        List<BuyCarInfo> list = loginMapper.selectBuyCarInfo(buyCar);
        orderInfo.setOrderStatus(1);
        orderInfo.setOrderCode(code);
        int id = loginMapper.insertOrderInfo(orderInfo);
        for(BuyCarInfo vo : list){
            vo.setOrderId(id);
        }
        return loginMapper.updateBatchList(list);
    }
}
