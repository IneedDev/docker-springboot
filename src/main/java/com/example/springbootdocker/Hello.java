package com.example.springbootdocker;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Hello {
    //wstrzykiwanie z konfiguracji
    @Value("${envname}")
    private String envname;

    @GetMapping ("/hello")
    public String hello(){
        return "hello" + envname;
    }
}
