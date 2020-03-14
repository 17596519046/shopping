package com.rich.controller;

import com.rich.pojo.BuyCar;
import com.rich.pojo.Goods;
import com.rich.pojo.SystemUser;
import com.rich.service.LoginService;
import com.rich.util.FastDFSClient;
import com.rich.vo.BuyCarInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/***
 * 登陆/注册
 */
@RequestMapping("/before/")
@Controller
public class LoginController {

    @Autowired
    private LoginService loginService;

    /***
     * 跳转到主页
     * @param model
     * @return
     */
    @RequestMapping("main")
    public String selectAll(Model model) {
        List<Goods> list = loginService.selectAllGoods();
        model.addAttribute("list",list);
        return "pages/before/main";
    }

    /***
     * 上传图片
     * @param file
     * @return
     */
    @RequestMapping("upload")
    @ResponseBody
    public String selectAll(@RequestBody MultipartFile file) throws Exception{
        FastDFSClient fastDFSClient=new FastDFSClient();
        String url = fastDFSClient.uploadFile(file.getBytes(), "jpg");
        return url;
    }

    /***
     * 跳转到商品详情界面
     * @param goods
     * @param model
     * @return
     */
    @RequestMapping("goodsDetail")
    public String goodsDetail(Goods goods,Model model) {
        model.addAttribute("po",goods);
        return "pages/before/productDetails";
    }

    /***
     * 加入购物车
     * @param buyCar
     * @param model
     * @return
     */
    @RequestMapping("addBuyCar")
    public String addBuyCar(BuyCar buyCar, Model model) {
        loginService.insertBuyCar(buyCar);
        List<BuyCarInfo> list = loginService.selectBuyCarInfo(buyCar);
        model.addAttribute("list",list);
        return "pages/before/buyCarSelf";
    }

    /***
     * 注册验证用户名是否已被注册
     * @param systemUser
     * @return
     */
    @RequestMapping("registerVerify")
    @ResponseBody
    public Map selectAll(SystemUser systemUser) {
        //初始化map
        HashMap map = new HashMap();
        int count = loginService.selectUserInfo(systemUser);
        if (count == 1) {
            map.put("flag", 1);
        } else {
            map.put("flag", 0);
        }
        return map;
    }

    /***
     * 注册
     * @param systemUser
     * @return
     */
    @RequestMapping("register")
    public String selectAll(Model model,SystemUser systemUser) {
        loginService.insertInfo(systemUser);
        return "pages/before/login";
    }

    /***
     * 修改密码
     * @param systemUser
     * @return
     */
    @RequestMapping("updatePasswordInfo")
    public String updatePasswordInfo(Model model,SystemUser systemUser) {
        loginService.updatePasswordInfo(systemUser);
        return "pages/before/login";
    }

    /***
     * 前台注销
     * @param request
     * @return
     */
    @RequestMapping("loginOut")
    @ResponseBody
    public String updatePasswordInfo(HttpServletRequest request) {
        request.getSession().removeAttribute("user");
        return "";
    }

    /***
     * 登陆
     * @param systemUser
     * @return
     */
    @RequestMapping("login")
    @ResponseBody
    public Map login(SystemUser systemUser, HttpServletRequest request) {
        //初始化map
        HashMap map = new HashMap();
        map.put("flag", 0);
        SystemUser user = loginService.selectInfo(systemUser);
        if (null == user) {
            map.put("flag", 1);
            map.put("msg","用户不存在");
        } else {
            if(!systemUser.getPassword().equals(user.getPassword())){
                map.put("flag", 1);
                map.put("msg","密码错误");
            }else{
                request.getSession().setAttribute("user",user);
            }
        }
        return map;
    }

    /***
     * 找回密码验证
     * @param systemUser
     * @return
     */
    @RequestMapping("queryPassword")
    @ResponseBody
    public Map queryPassword(SystemUser systemUser, HttpServletRequest request) {
        //初始化map
        HashMap map = new HashMap();
        map.put("flag", 0);
        SystemUser user = loginService.selectInfo(systemUser);
        if (null == user) {
            map.put("flag", 1);
            map.put("msg","用户不存在");
        } else {
            if(!systemUser.getPhone().equals(user.getPhone())){
                map.put("flag", 2);
                map.put("msg","手机号错误");
            }
        }
        return map;
    }
}
