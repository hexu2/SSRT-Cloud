package com.ssrt.gen;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import com.ssrt.common.security.annotation.EnableCustomConfig;
import com.ssrt.common.security.annotation.EnableRyFeignClients;
import com.ssrt.common.swagger.annotation.EnableCustomSwagger2;

/**
 * 代码生成
 * 
 * @author ssrt
 */
@EnableCustomConfig
@EnableCustomSwagger2   
@EnableRyFeignClients
@SpringBootApplication
public class SSRTGenApplication
{
    public static void main(String[] args)
    {
        SpringApplication.run(SSRTGenApplication.class, args);
        System.out.println("(♥◠‿◠)ﾉﾞ  ssrt-gen startup successfully   ლ(´ڡ`ლ)ﾞ  \n" +

                "--   ######   ######  ########  ########\n" +
                "--  ##    ## ##    ## ##     ##    ##\n" +
                "--  ##       ##       ##     ##    ##\n" +
                "--   ######   ######  ########     ##\n" +
                "--        ##       ## ##   ##      ##\n" +
                "--  ##    ## ##    ## ##    ##     ##\n" +
                "--   ######   ######  ##     ##    ##\n");
    }
}
