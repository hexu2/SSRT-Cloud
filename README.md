<!--
<p align="center">
	<img alt="logo" src="https://oscimg.oschina.net/oscnet/up-b99b286755aef70355a7084753f89cdb7c9.png">
</p>
-->
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
│       └── ssrt-gen                                 // 代码生成 [9202]
│       └── ssrt-job                                 // 定时任务 [9203]
│       └── ssrt-file                                // 文件服务 [9300]
├── ssrt-visual          // 图形化管理模块 Done
│       └── ssrt-visual-monitor                      // 监控中心 [9100] Done
├──pom.xml                // 公共依赖
~~~

## 架构图
To be provided
<!--
<img src="https://oscimg.oschina.net/oscnet/up-82e9722ecb846786405a904bafcf19f73f3.png"/>
-->

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

4、视图层
* Vue 2.6.x
* Axios 0.21.0
* Element 2.14.x

#主要特性
* 完全响应式布局（支持电脑、平板、手机等所有主流设备）
* 强大的一键生成功能（包括控制器、模型、视图、菜单等）
* 支持多数据源，简单配置即可实现切换。
* 支持按钮及数据权限，可自定义部门数据权限。
* 对常用js插件进行二次封装，使js代码变得简洁，更加易维护
* 完善的XSS防范及脚本过滤，彻底杜绝XSS攻击
* Maven多项目依赖，模块及插件分项目，尽量松耦合，方便模块升级、增减模块。
* 国际化支持，服务端及客户端支持
* 完善的日志记录体系简单注解即可实现

## 功能
To be provided
<!-- 
1.  用户管理：用户是系统操作者，该功能主要完成系统用户配置。
2.  部门管理：配置系统组织机构（公司、部门、小组），树结构展现支持数据权限。
3.  岗位管理：配置系统用户所属担任职务。
4.  菜单管理：配置系统菜单，操作权限，按钮权限标识等。
5.  角色管理：角色菜单权限分配、设置角色按机构进行数据范围权限划分。
6.  字典管理：对系统中经常使用的一些较为固定的数据进行维护。
7.  参数管理：对系统动态配置常用参数。
8.  通知公告：系统通知公告信息发布维护。
9.  操作日志：系统正常操作日志记录和查询；系统异常信息日志记录和查询。
10. 登录日志：系统登录日志记录查询包含登录异常。
11. 在线用户：当前系统中活跃用户状态监控。
12. 定时任务：在线（添加、修改、删除)任务调度包含执行结果日志。
13. 代码生成：前后端代码的生成（java、html、xml、sql）支持CRUD下载 。
14. 系统接口：根据业务代码自动生成相关的api接口文档。
15. 服务监控：监视当前系统CPU、内存、磁盘、堆栈等相关信息。
16. 在线构建器：拖动表单元素生成相应的HTML代码。
17. 连接池监视：监视当前系统数据库连接池状态，可进行分析SQL找出系统性能瓶颈。
-->

## 体验
1) Test account:
- admin/admin123  

2) Mail URLs:

## 演示图
To be provided
<!--
<table>
    <tr>
        <td><img src="https://oscimg.oschina.net/oscnet/cd1f90be5f2684f4560c9519c0f2a232ee8.jpg"/></td>
        <td><img src="https://oscimg.oschina.net/oscnet/1cbcf0e6f257c7d3a063c0e3f2ff989e4b3.jpg"/></td>
    </tr>
    <tr>
        <td><img src="https://oscimg.oschina.net/oscnet/up-8074972883b5ba0622e13246738ebba237a.png"/></td>
        <td><img src="https://oscimg.oschina.net/oscnet/up-9f88719cdfca9af2e58b352a20e23d43b12.png"/></td>
    </tr>
    <tr>
        <td><img src="https://oscimg.oschina.net/oscnet/up-39bf2584ec3a529b0d5a3b70d15c9b37646.png"/></td>
        <td><img src="https://oscimg.oschina.net/oscnet/up-4148b24f58660a9dc347761e4cf6162f28f.png"/></td>
    </tr>
	<tr>
        <td><img src="https://oscimg.oschina.net/oscnet/up-b2d62ceb95d2dd9b3fbe157bb70d26001e9.png"/></td>
        <td><img src="https://oscimg.oschina.net/oscnet/up-d67451d308b7a79ad6819723396f7c3d77a.png"/></td>
    </tr>	 
    <tr>
        <td><img src="https://oscimg.oschina.net/oscnet/5e8c387724954459291aafd5eb52b456f53.jpg"/></td>
        <td><img src="https://oscimg.oschina.net/oscnet/644e78da53c2e92a95dfda4f76e6d117c4b.jpg"/></td>
    </tr>
	<tr>
        <td><img src="https://oscimg.oschina.net/oscnet/up-8370a0d02977eebf6dbf854c8450293c937.png"/></td>
        <td><img src="https://oscimg.oschina.net/oscnet/up-49003ed83f60f633e7153609a53a2b644f7.png"/></td>
    </tr>
	<tr>
        <td><img src="https://oscimg.oschina.net/oscnet/up-d4fe726319ece268d4746602c39cffc0621.png"/></td>
        <td><img src="https://oscimg.oschina.net/oscnet/up-c195234bbcd30be6927f037a6755e6ab69c.png"/></td>
    </tr>
	<tr>
        <td><img src="https://oscimg.oschina.net/oscnet/up-ece3fd37a3d4bb75a3926e905a3c5629055.png"/></td>
        <td><img src="https://oscimg.oschina.net/oscnet/up-92ffb7f3835855cff100fa0f754a6be0d99.png"/></td>
    </tr>
    <tr>
        <td><img src="https://oscimg.oschina.net/oscnet/up-ff9e3066561574aca73005c5730c6a41f15.png"/></td>
        <td><img src="https://oscimg.oschina.net/oscnet/up-5e4daac0bb59612c5038448acbcef235e3a.png"/></td>
    </tr>
</table>

-->

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