package com.movile.springbootmvc.controller;

import com.movile.springbootmvc.config.ApplicationConfiguration;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.boot.test.WebIntegrationTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


import static org.assertj.core.api.Assertions.assertThat;

/**
 * Created by raphael on 3/8/16.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = ApplicationConfiguration.class)
@WebIntegrationTest(value = "server.port=9000")
public class WelcomeControllerWebTest {

    private WebDriver browser;

    @Before
    public void setup() {
        browser = new FirefoxDriver();
    }

    @Test
    public void startTest() {
        browser.get("http://localhost:9000/");

        assertThat(browser.getPageSource()).contains("b");
    }

    @After
    public void tearDown() {
        browser.close();
    }
}


