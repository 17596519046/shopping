package com.rich.controller;

import com.rich.pojo.Goods;
import com.rich.service.OrderService;
import com.rich.vo.MenuInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 * 〈描述：controller〉
 *
 * @author zzy
 * @create 2020/3/28
 * @since 1.0.0
 */
@RequestMapping("/goods")
@Controller
public class GoodsController {

    @Autowired
    private OrderService orderService;

    /***
     * 跳到商品管理主页
     * @return
     */
    @RequestMapping("/index")
    public String index() {
        // 跳到后台主页
        return "pages/back/goods";
    }

    /**
     * 获取所有商品
     * @return
     */
    @RequestMapping("getAllGoods")
    @ResponseBody
    public List<Goods> getAllGoods(Model model, String name) {
        List<Goods> goods = orderService.getAllGoods(name);
        model.addAttribute("goods",goods);
        return goods;
    }

    /**
     * 添加商品
     * @return
     */
    @RequestMapping("addGoods")
    @ResponseBody
    public void addGoods(Goods goods) {
        if (goods != null && goods.getId() != 0) {
            orderService.updateGoods(goods);
        } else {
            orderService.addGoods(goods);
        }
    }

    /**
     * 删除商品
     * @return
     */
    @RequestMapping("deleteGoods")
    @ResponseBody
    public void deleteGoods(Integer goodsId) {
        orderService.deleteGoods(goodsId);
    }


}
