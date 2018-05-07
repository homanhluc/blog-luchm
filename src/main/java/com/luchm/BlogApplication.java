package com.luchm;

import com.luchm.domain.User;
import com.luchm.repository.UserRepository;
import com.luchm.service.UserService;
import com.luchm.service.impl.UserServiceImpl;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class BlogApplication {
    public static void main(String[] args) {
        SpringApplication.run(BlogApplication.class, args);
    }
}
