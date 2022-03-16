package com.ssrt.gateway;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * 网关启动程序
 * 
 * @author ssrt
 */
@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class })
public class SSRTGatewayApplication
{
    public static void main(String[] args) {
        SpringApplication.run(SSRTGatewayApplication.class, args);
        System.out.println("(♥◠‿◠)ﾉﾞ  ssrt-gateway startup successfully   ლ(´ڡ`ლ)ﾞ  \n" +

                "--   ######   ######  ########  ########\n" +
                "--  ##    ## ##    ## ##     ##    ##\n" +
                "--  ##       ##       ##     ##    ##\n" +
                "--   ######   ######  ########     ##\n" +
                "--        ##       ## ##   ##      ##\n" +
                "--  ##    ## ##    ## ##    ##     ##\n" +
                "--   ######   ######  ##     ##    ##\n");
    }
}
