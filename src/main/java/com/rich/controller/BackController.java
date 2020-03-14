package com.rich.controller;

import com.rich.pojo.SystemUser;
import com.rich.service.BackService;
import com.rich.vo.MenuInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@RequestMapping("/back/")
@Controller
public class BackController {

    @Autowired
    BackService backService;

    /**
     * 后台登录接口
     * @param systemUser 实体类
     * @return
     */
    @RequestMapping("login")
    @ResponseBody
    public Map selectAll(@RequestBody SystemUser systemUser, HttpServletRequest request) {
        boolean b = backService.backLogin(systemUser, request);
        HashMap map = new HashMap();
        map.put("flag", 1);
        if (!b){
            map.put("flag", 0);
            map.put("msg","账号或密码不正确");
            return map;
        }
        return map;
    }

    /**
     * 获取菜单权限
     * @return
     */
    @RequestMapping("home")
    public String selectMenuInfo(Model model,HttpServletRequest request) {
        List<MenuInfo> menuList = backService.selectMenuInfo(request);
        model.addAttribute("menuList",menuList);
        return "pages/back/menu";
    }

}
