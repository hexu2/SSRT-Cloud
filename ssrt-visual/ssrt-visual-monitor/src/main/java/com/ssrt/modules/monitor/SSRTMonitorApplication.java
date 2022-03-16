package com.ssrt.modules.monitor;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import de.codecentric.boot.admin.server.config.EnableAdminServer;

/**
 * 监控中心
 * 
 * @author ssrt
 */
@EnableAdminServer
@SpringBootApplication
public class SSRTMonitorApplication
{
    public static void main(String[] args)
    {
        SpringApplication.run(SSRTMonitorApplication.class, args);
        System.out.println("(♥◠‿◠)ﾉﾞ  ssrt-visual-monitor startup successfully   ლ(´ڡ`ლ)ﾞ  \n" +

                "--   ######   ######  ########  ########\n" +
                "--  ##    ## ##    ## ##     ##    ##\n" +
                "--  ##       ##       ##     ##    ##\n" +
                "--   ######   ######  ########     ##\n" +
                "--        ##       ## ##   ##      ##\n" +
                "--  ##    ## ##    ## ##    ##     ##\n" +
                "--   ######   ######  ##     ##    ##\n");
    }
}
