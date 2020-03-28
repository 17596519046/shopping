package com.rich.service.impl;

import com.rich.mapper.OrderMapper;
import com.rich.pojo.OrderInfo;
import com.rich.service.OrderService;
import com.rich.vo.OrderInfoVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 * 〈描述：impl〉
 *
 * @author zzys
 * @create 2020/3/14
 * @since 1.0.0
 */
@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderMapper orderMapper;

    @Override
    public List<OrderInfoVO> getAllOrder(int isAll) {
        List<OrderInfoVO> orderInfoVOS = new ArrayList<>();
        if (isAll == 0) {
            orderInfoVOS = orderMapper.getAllOrder1();
        } else {
            orderInfoVOS = orderMapper.getAllOrder(isAll);
        }
        for (OrderInfoVO orderInfoVO : orderInfoVOS) {
            switch (orderInfoVO.getOrderStatus()) {
                case 1:
                    orderInfoVO.setOrderStatusStr("已下单");
                    break;
                case 2:
                    orderInfoVO.setOrderStatusStr("取消订单");
                    break;
                case 3:
                    orderInfoVO.setOrderStatusStr("管理取消");
                    break;
                case 4:
                    orderInfoVO.setOrderStatusStr("已发货");
                    break;
                case 5:
                    orderInfoVO.setOrderStatusStr("已接收");
                    break;
                default:
                    orderInfoVO.setOrderStatusStr("派送中");
                    break;
            }
        }
        return orderInfoVOS;
    }

    @Override
    public void updateStatus(Integer orderId,Integer orderStatus) {
        // 修改订单状态
        orderMapper.updateStatus(orderId, orderStatus);
        // 如果是发货了 修改商品库存状态
        if (orderStatus != null && orderStatus == 4) {
            // 获取最新订单信息
            OrderInfoVO orderInfoVO = orderMapper.getOneOrder(orderId);
            // 减去订单数量
            orderMapper.updateGoodsNum(orderInfoVO.getGsId(), orderInfoVO.getNum());
        }
    }


}
