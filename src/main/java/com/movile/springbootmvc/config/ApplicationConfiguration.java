package com.movile.springbootmvc.config;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 * Created by raphael on 3/8/16.
 */
@Configuration
@EnableAutoConfiguration()
@ComponentScan(basePackages = "com.movile.springbootmvc")
public class ApplicationConfiguration {
}
