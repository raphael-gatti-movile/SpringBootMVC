package com.movile.springbootmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

/**
 * Created by raphael on 3/7/16.
 */
@Controller
public class WelcomeController {

    @RequestMapping("/")
    public String welcome(Map<String, Object> model) {

        return "/page2";
    }

}
