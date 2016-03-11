package com.movile.springbootmvc.bin;

import com.movile.springbootmvc.config.ApplicationConfiguration;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * Created by raphael on 3/7/16.
 */

@SpringBootApplication
public class Application {
    public static void main(String[] args) {
        SpringApplication.run(ApplicationConfiguration.class, args);
    }
}
