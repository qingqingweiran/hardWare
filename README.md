## 本项目为全栈软件开发工程师岗位测试题：自动生产线监控系统设计

>项目目录：
>
>- **hardware**
>  - 使用Python3.10搭配Django框架写的后端
>
>- **hardware-web**
>  - 使用Vue搭建的前端页面

## 功能介绍

- 模拟生成传感器数据

​		-  使用 **yarn serve** 运行前端项目，访问 http://127.0.0.1:8080/#/，点击**开始模拟数据**，后端开始模拟产生相关传感器信息并存储到数据库，同时计算在每个工位停留时间。

![Image text](https://raw.githubusercontent.com/hongmaju/light7Local/main/img/image-20231013164138527.png)

![Image text](https://raw.githubusercontent.com/hongmaju/light7Local/main/img/image-20231013164300763.png)

- 筛选功能，进入http://127.0.0.1:8080/#/filter页面

  ![Image text](https://raw.githubusercontent.com/hongmaju/light7Local/main/img/image-20231013164419360.png)

  选择具体的工位列表，即可筛选出今天该工位的信息。

![Image text](https://raw.githubusercontent.com/hongmaju/light7Local/main/img/image-20231013164447868.png)

>
>
>具体数据库结构和数据见附件harware.sql