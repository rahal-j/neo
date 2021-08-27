package com.example.demo.Controller;

import com.example.demo.Dto.ResponseDto;
import com.example.demo.Dto.UserDto;
import com.example.demo.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@RequestMapping("user")
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/insertPage")
    public String getInsertPage(){

        return "user_form";
    }

    @PostMapping("/save")
    @ResponseBody
    public ResponseDto saveUser(@RequestBody UserDto userDto){

        return userService.addUser(userDto);

    }



}
