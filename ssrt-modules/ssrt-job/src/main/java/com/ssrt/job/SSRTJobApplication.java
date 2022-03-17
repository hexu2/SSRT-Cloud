package com.ssrt.job;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import com.ssrt.common.security.annotation.EnableCustomConfig;
import com.ssrt.common.security.annotation.EnableRyFeignClients;
import com.ssrt.common.swagger.annotation.EnableCustomSwagger2;

/**
 * 定时任务
 * 
 * @author ssrt
 */
@EnableCustomConfig
@EnableCustomSwagger2   
@EnableRyFeignClients
@SpringBootApplication
public class SSRTJobApplication
{
    public static void main(String[] args)
    {
        SpringApplication.run(SSRTJobApplication.class, args);
        System.out.println("(♥◠‿◠)ﾉﾞ  ssrt-job startup successfully   ლ(´ڡ`ლ)ﾞ  \n" +

                "--   ######   ######  ########  ########\n" +
                "--  ##    ## ##    ## ##     ##    ##\n" +
                "--  ##       ##       ##     ##    ##\n" +
                "--   ######   ######  ########     ##\n" +
                "--        ##       ## ##   ##      ##\n" +
                "--  ##    ## ##    ## ##    ##     ##\n" +
                "--   ######   ######  ##     ##    ##\n");
    }
}
