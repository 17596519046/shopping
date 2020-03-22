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

    /***
     * 查看订单
     * @return
     */
    @RequestMapping("/index")
    public String backIndex() {
        // 跳到后台主页
        return "pages/back/index";
    }

    /***
     * 跳到登陆页面
     * @return
     */
    @RequestMapping("/backLogin")
    public String backLogin() {
        // 跳到登陆页面
        return "pages/back/login";
    }

    /***
     * 跳到登陆页面
     * @return
     */
    @RequestMapping("/user")
    public String user() {
        // 跳到登陆页面
        return "pages/back/user";
    }


    /**
     * 后台登录接口
     * @param systemUser 实体类
     * @return
     */
    @RequestMapping("/login")
    @ResponseBody
    public Map selectAll(@RequestBody SystemUser systemUser, HttpServletRequest request) {
        // service层调用后台登陆接口
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
    @ResponseBody
    public List<MenuInfo> selectMenuInfo(Model model,HttpServletRequest request) {
        List<MenuInfo> menuList = backService.selectMenuInfo(request);
        model.addAttribute("menuList",menuList);
        return menuList;
    }

    /**
     * 添加后台用户信息
     * @return
     */
    @RequestMapping("saveSystemUser")
    @ResponseBody
    public Map saveSystemUser(@RequestBody SystemUser systemUser) {
        boolean b = backService.saveSystemUser(systemUser);
        HashMap map = new HashMap();
        if (b){
            map.put("flag", 1);
            map.put("msg","添加成功");
            return map;
        }
        map.put("flag", 0);
        map.put("msg","添加失败");
        return map;
    }

    /**
     * 修改后台用户信息
     * @return
     */
    @RequestMapping("updateSystemUser")
    @ResponseBody
    public Map updateSystemUser(@RequestBody SystemUser systemUser) {
        boolean b = backService.updateSystemUser(systemUser);
        HashMap map = new HashMap();
        if (b){
            map.put("flag", 1);
            map.put("msg","修改成功");
            return map;
        }
        map.put("flag", 0);
        map.put("msg","修改失败");
        return map;
    }

    /**
     * 查询所有用户信息
     * @return
     */
    @RequestMapping("selectSystemUserList")
    @ResponseBody
    public List<SystemUser> selectSystemUserList(Model model) {
        List<SystemUser> userList = backService.selectSystemUserList();
        model.addAttribute("userList",userList);
        return userList;
    }

}
