package com.example.demo.DtoToEntityMapper;

import com.example.demo.Dto.UserDto;
import com.example.demo.Entity.User;

public class UserDtoToEntityMapper {

    public static User getUserEntity(UserDto userDto,User user){

        user.setId(user.getId() !=null? user.getId(): userDto.getId());
        user.setTitle(userDto.getTitle());
        user.setFirstName(userDto.getFirstName());
        user.setLastName(userDto.getLastName());
        user.setDob(userDto.getDob());
        user.setEmail(userDto.getEmail());
        user.setContactNo(userDto.getContactNo());
        user.setPassword(userDto.getPassword());

        return user;




    }




}
