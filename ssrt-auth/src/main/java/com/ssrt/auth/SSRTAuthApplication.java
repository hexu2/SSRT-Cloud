package com.ssrt.auth;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import com.ssrt.common.security.annotation.EnableRyFeignClients;

/**
 * 认证授权中心
 * 
 * @author ssrt
 */
@EnableRyFeignClients
@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class })
public class SSRTAuthApplication
{
    public static void main(String[] args)
    {
        SpringApplication.run(SSRTAuthApplication.class, args);
        System.out.println("(♥◠‿◠)ﾉﾞ  ssrt-auth startup successfully   ლ(´ڡ`ლ)ﾞ  \n" +

        "--   ######   ######  ########  ########\n" +
        "--  ##    ## ##    ## ##     ##    ##\n" +
        "--  ##       ##       ##     ##    ##\n" +
        "--   ######   ######  ########     ##\n" +
        "--        ##       ## ##   ##      ##\n" +
        "--  ##    ## ##    ## ##    ##     ##\n" +
        "--   ######   ######  ##     ##    ##\n" );

    }
}
