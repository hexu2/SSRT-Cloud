package com.ssrt.file;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import com.ssrt.common.swagger.annotation.EnableCustomSwagger2;

/**
 * 文件服务
 * 
 * @author ssrt
 */
@EnableCustomSwagger2
@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class })
public class SSRTFileApplication
{
    public static void main(String[] args)
    {
        SpringApplication.run(SSRTFileApplication.class, args);
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
