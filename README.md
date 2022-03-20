<h1 align="center" style="margin: 30px 0 30px; font-weight: bold;">SSRT(Self-Service Report Tool) v1.0.0</h1>
<h4 align="center">基于 Vue/Element UI 和 Spring Boot/Spring Cloud & Alibaba 前后端分离的分布式微服务架构</h4>
<p align="center">
	<a href="https://github.com/hexu2/SSRT-Cloud"><img src="https://img.shields.io/badge/ssrt-v1.0.0-brightgreen.svg"></a>
</p>

## 平台简介

* 采用前后端分离的模式，前端使用vue
* 后端采用Spring Boot、Spring Cloud & Alibaba。
* 注册中心、配置中心选型Nacos，权限认证使用Redis。
* 流量控制框架选型Sentinel，分布式事务选型Seata。
* 技术栈（[Vue3](https://v3.cn.vuejs.org) | [Element Plus](https://element-plus.org/zh-CN) | [Vite](https://cn.vitejs.dev)）
* Github 源码位置：[SSRT-Cloud](https://github.com/hexu2/SSRT-Cloud) 

## 系统模块

~~~
com.ssrt     
├── ssrt-ui              // 前端框架 [80]
├── ssrt-gateway         // 网关模块 [8080] Done
├── ssrt-auth            // 认证中心 [9200] Done
├── ssrt-api             // 接口模块 Done
│       └── ssrt-api-system                          // 系统接口 Done
├── ssrt-common          // 通用模块 Done              
│       └── ssrt-common-core                         // 核心模块 Done
│       └── ssrt-common-datascope                    // 权限范围 Done
│       └── ssrt-common-datasource                   // 多数据源 Done
│       └── ssrt-common-log                          // 日志记录 Done
│       └── ssrt-common-redis                        // 缓存服务 Done
│       └── ssrt-common-security                     // 安全模块 Done
│       └── ssrt-common-swagger                      // 系统接口 Done
├── ssrt-modules         // 业务模块
│       └── ssrt-system                              // 系统模块 [9201] Done
│       └── ssrt-gen                                 // 代码生成 [9202] Done
│       └── ssrt-job                                 // 定时任务 [9203] Done
│       └── ssrt-file                                // 文件服务 [9300] Done
├── ssrt-visual          // 图形化管理模块 Done        
│       └── ssrt-visual-monitor                      // 监控中心 [9100]  http://localhost:9100/login  ssrt/123456
├──pom.xml                // 公共依赖
~~~
http://localhost:9201/swagger-ui/index.html
http://localhost:9203/swagger-ui/index.html
http://localhost:8080/swagger-ui/index.html

## 架构图
To be provided

## 技术选型
1、系统环境
* Java EE 8
* Servlet 3.0
* Apache Maven 3

2、主框架
* Spring Boot 2.3.x
* Spring Cloud Hoxton.SR9
* Spring Framework 5.2.x
* Spring Security 5.2.x

3、持久层
* Apache MyBatis 3.5.x
* Hibernate Validation 6.0.x
* Alibaba Druid 1.2.x
* Mysql 8.5

4、视图层
* Vue 2.6.x
* Axios 0.21.0
* Element 2.14.x

## 主要特性
* 完全响应式布局（支持电脑、平板、手机等所有主流设备）
* 支持多数据源，简单配置即可实现切换。
* 支持按钮及数据权限，可自定义部门数据权限。
* 对常用js插件进行二次封装，使js代码变得简洁，更加易维护
* 完善的XSS防范及脚本过滤，彻底杜绝XSS攻击
* Maven多项目依赖，模块及插件分项目，尽量松耦合，方便模块升级、增减模块。
* 完善的日志记录体系简单注解即可实现
<!--
* 强大的一键生成功能（包括控制器、模型、视图、菜单等）
* 国际化支持，服务端及客户端支持
-->

## 功能
To be provided
7.  参数管理：对系统动态配置常用参数。Done
8.  通知公告：系统通知公告信息发布维护。Done
9.  操作日志：系统正常操作日志记录和查询；系统异常信息日志记录和查询。Done
14. 系统接口：根据业务代码自动生成相关的api接口文档。Done
15. 服务监控：监视当前系统CPU、内存、磁盘、堆栈等相关信息。Done
5.  角色管理：角色菜单权限分配、设置角色按机构进行数据范围权限划分。Done
12. 定时任务：在线（添加、修改、删除, 生成/发送报表)任务调度包含执行结果日志。WIP
18. ssrt-report-deliver module.将report邮件或其他方式发送给用户 WIP
<!-- 
1.  用户管理：用户是系统操作者，该功能主要完成系统用户配置。
2.  部门管理：配置系统组织机构（公司、部门、小组），树结构展现支持数据权限。
3.  岗位管理：配置系统用户所属担任职务。
4.  菜单管理：配置系统菜单，操作权限，按钮权限标识等。

6.  字典管理：对系统中经常使用的一些较为固定的数据进行维护。
10. 登录日志：系统登录日志记录查询包含登录异常。
11. 在线用户：当前系统中活跃用户状态监控。
12. 定时任务：在线（添加、修改、删除)任务调度包含执行结果日志。
13. 代码生成：前后端代码的生成（java、html、xml、sql）支持CRUD下载 。
16. 在线构建器：拖动表单元素生成相应的HTML代码。
17. 连接池监视：监视当前系统数据库连接池状态，可进行分析SQL找出系统性能瓶颈。
-->

## 体验
 Mail URLs:
``````````
1) Login:
http://localhost:1024/login
ssrt/123456  

2) Register:
http://localhost:1024/register

3) Nacos:
http://localhost:8848/nacos/#/login
ssrt/123456

4) Swagger:

http://localhost:8080/swagger-ui/index.html
http://localhost:8080/swagger-ui/index.html
http://localhost:8080/swagger-ui/index.html
http://localhost:8080/swagger-ui/index.html
http://localhost:8080/swagger-ui/index.html
http://localhost:8080/swagger-ui/index.html


``````````
## 演示图
To be provided


## Other Tool
* Tools to generate springboot startup banner 

[taag](http://patorjk.com/software/taag) | 
[ascii](http://www.network-science.de/ascii/) | 
[img2txt](http://www.degraeve.com/img2txt.php)

## To do list

ssrt-modules
        <module>ssrt-gen</module>
        <module>ssrt-job</module>
        <module>ssrt-file</module>
        
## 后端运行
* step1: Startup mysql8

* step2: Startup Nacos
~~~
startup:
sh /Users/hexu/InstallSofeWare/nacos/bin/startup.sh -m standalone

stop:
sh /Users/hexu/InstallSofeWare/nacos/bin/shutdown.sh

URL: http://localhost:8848/nacos
username/password2: ssrt/ssrt
username/password2: nacos/nacos
~~~

* setep3: startup redis
~~~
/usr/local/bin/redis/

1) startup redis
redis-server

2) monitor redis
redis-cli monitor
~~~

* step2: Startup ssrt modules (no sequence requirement)
~~~
1. ssrt-gateway module - (Required) *
SSRTGatewayApplication.java

2. ssrt-auth module  - (Required) *
SSRTAuthApplication.java

3. ssrt-api-system module - (Required) *
SSRTSystemApplication.java

4. ssrt-visual-monitor module - (Optional)
SSRTMonitorApplication.java

5. ssrt-job module - (Optional)
SSRTJobApplication.java

6. ssrt-file module - (Optional)
SSRTFileApplication.java

7. ssrt-gen module - (Optional)
SSRTGenApplication.java
~~~


## Nacos setup steps for mac 

* [Nacos websie](https://nacos.io/zh-cn/)
* [Download stable release version](https://github.com/alibaba/nacos/releases?page=1)


````````
startup:
sh /Users/hexu/InstallSofeWare/nacos/bin/startup.sh -m standalone

stop:
sh /Users/hexu/InstallSofeWare/nacos/bin/shutdown.sh

URL: http://localhost:8848/nacos
username/password2: ssrt/ssrt
username/password2: nacos/nacos


hexudeMacBook-Air:bin hexu$ pwd
/Users/hexu/InstallSofeWare/nacos/bin
hexudeMacBook-Air:bin hexu$ ls -ltr
total 48
-rwxr-xr-x@ 1 hexu  staff   951  3 30  2021 shutdown.sh
-rwxr-xr-x@ 1 hexu  staff   954  3 30  2021 shutdown.cmd
-rwxr-xr-x@ 1 hexu  staff  5136 12  8 20:22 startup.sh
-rwxr-xr-x@ 1 hexu  staff  3368 12  8 20:22 startup.cmd
drwxr-xr-x  3 hexu  staff    96  3 18 22:15 work
drwxr-xr-x  3 hexu  staff    96  3 18 22:15 logs
-rw-r--r--  1 hexu  staff   750  3 18 22:16 derby.log
hexudeMacBook-Air:bin hexu$ 

````````





