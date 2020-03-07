package com.rich.controller;
import com.rich.pojo.User;
import com.rich.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.List;

@RequestMapping("/login/")
@Controller
public class LoginController {

    @Autowired
    private LoginService loginService;

    @RequestMapping("select")
    public String selectAll(Model model) {
        List<User> list = loginService.selectAll();
        model.addAttribute("list",list);
        return "index";
    }

}
