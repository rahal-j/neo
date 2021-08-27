package com.example.demo.Controller;

import com.example.demo.Dto.ResponseDto;
import com.example.demo.Entity.User;
import com.example.demo.Service.UserService;
import com.example.demo.enums.ResponseEnum;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@Controller
@SessionAttributes("user")
public class LoginController {


    @Autowired
    UserService userService;


    @ModelAttribute("user")
    public User setUpUserForm() {
        return new User();
    }



    @GetMapping("/")
    public String index() {
        return "login";
    }


    @RequestMapping("/doLogin")
    public String login(@RequestParam String email, @RequestParam String password, Model model){
        User user = (User) model.getAttribute("user");
        user = userService.getUserFromEmailandPw(email,password);
        if(user != null){
            model.addAttribute("user",user);
            return "dashboard";
        }
        return "login";
    }

    @RequestMapping("/doLogin-mobile")
    @ResponseBody
    public ResponseDto loginMobile(@RequestParam String email, @RequestParam String password){
        User user =null;
//        System.out.println(user.getUserRole().getName());
        //     user = userService.getUserByUsername(username,password);
        if(user != null){
            return new ResponseDto(ResponseEnum.SUCCESS.getCode(),"Logged in Successfully",user.getId());
        }
        return new ResponseDto(ResponseEnum.FAIL.getCode(),"Logging Failed");

    }
    @RequestMapping("/logout")
    public String logout(Model model, HttpSession httpSession){
        httpSession.removeAttribute("user");
        httpSession.invalidate();
        return "login";
    }

    @RequestMapping("/dashboard")
    public String logout(Model model){

        return "dashboard";
    }










}
