package com.example.demo.Service.Impl;

import com.example.demo.Dto.ResponseDto;
import com.example.demo.Dto.UserDto;
import com.example.demo.DtoToEntityMapper.UserDtoToEntityMapper;
import com.example.demo.Entity.User;
import com.example.demo.Repository.UserDao;
import com.example.demo.Service.UserService;
import com.example.demo.enums.ResponseEnum;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public ResponseDto addUser(UserDto userDto){

        ResponseDto responseDto = new ResponseDto(ResponseEnum.FAIL.getCode(),"Registration Failed");

        try{
            User user = UserDtoToEntityMapper.getUserEntity(userDto,new User());
            userDao.save(user);
            responseDto.setCode(ResponseEnum.SUCCESS.getCode());
            responseDto.setMessage("User Save successful");

            return responseDto;
        }catch (Exception e){
            return responseDto;
        }

    }



    @Override
    public User getUserFromEmailandPw(String email, String password){

        User user = userDao.findByEmailAndPassword(email,password);

        return user;

    }



}
