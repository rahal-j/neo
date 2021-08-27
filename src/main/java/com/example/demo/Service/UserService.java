package com.example.demo.Service;

import com.example.demo.Dto.ResponseDto;
import com.example.demo.Dto.UserDto;
import com.example.demo.Entity.User;

public interface UserService {
    ResponseDto addUser(UserDto userDto);

    User getUserFromEmailandPw(String email, String password);
}
