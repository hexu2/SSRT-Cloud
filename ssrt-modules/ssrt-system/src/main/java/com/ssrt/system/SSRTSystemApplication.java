package com.ssrt.system;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import com.ssrt.common.security.annotation.EnableCustomConfig;
import com.ssrt.common.security.annotation.EnableRyFeignClients;
import com.ssrt.common.swagger.annotation.EnableCustomSwagger2;

/**
 * 系统模块
 * 
 * @author ssrt
 */
@EnableCustomConfig
@EnableCustomSwagger2
@EnableRyFeignClients
@SpringBootApplication
public class SSRTSystemApplication {
    public static void main(String[] args)
    {
        SpringApplication.run(SSRTSystemApplication.class, args);
        System.out.println("(♥◠‿◠)ﾉﾞ  ssrt-system startup successfully   ლ(´ڡ`ლ)ﾞ  \n" +

                "--   ######   ######  ########  ########\n" +
                "--  ##    ## ##    ## ##     ##    ##\n" +
                "--  ##       ##       ##     ##    ##\n" +
                "--   ######   ######  ########     ##\n" +
                "--        ##       ## ##   ##      ##\n" +
                "--  ##    ## ##    ## ##    ##     ##\n" +
                "--   ######   ######  ##     ##    ##\n");
    }
}
