package com.rich.controller;

import com.rich.pojo.BuyCar;
import com.rich.pojo.OrderInfo;
import com.rich.service.OrderService;
import com.rich.vo.BuyCarInfo;
import com.rich.vo.MenuInfo;
import com.rich.vo.OrderInfoVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 * 〈描述：order〉
 *
 * @author zzy
 * @create 2020/3/14
 * @since 1.0.0
 */
@RequestMapping("/order")
@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;


    /***
     * 跳到订单界面
     * @return
     */
    @RequestMapping("/index")
    public String backIndex() {
        // 跳到后台主页
        return "pages/back/order";
    }

    @RequestMapping("/getAllOrder")
    @ResponseBody
    public List<OrderInfoVO> getAllOrder(Model model, String isAll) {
        int integer = Integer.valueOf(isAll);
        List<OrderInfoVO> menuList = orderService.getAllOrder(integer);
        model.addAttribute("orderInfoList",menuList);
        return menuList;
    }

    @RequestMapping("/updateStatus")
    @ResponseBody
    public void updateStatus(Integer orderId ,Integer orderStatus) {
        orderService.updateStatus(orderId, orderStatus);
    }



}


















