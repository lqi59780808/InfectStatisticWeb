# InfectStatisticWeb
疫情统计可视化

1.项目简介：
* 该项目通过读取统计疫情文件信息，生成可视化的地图界面，并展示数据，还提供各省份具体信息，通过折线图来反映变化趋势

2.结对学号：
* 221701113、221701128

3.作业链接：
* [结对第二次作业——某次疫情统计可视化的实现](https://edu.cnblogs.com/campus/fzu/2020SPRINGS/homework/10460)

4.博客链接：
* [bkmemory——结对第二次作业——某次疫情统计可视化的实现](https://www.cnblogs.com/bkmemory/p/12494139.html)

5.构建和运行：
   * 该项目基于Eclipse的Dynamic Java Project开发，开发环境为JDK1.8，tomcat9.0，推荐在此开发环境下进行配置，这个项目所有用到的文件，都是utf-8，请注意编码格式
   * 此项目的WebContent为Web根目录，src里面的包为Java接口用的包，用Eclipse以外的IDE请根据需要将内容导入即可
   * 环境不符合有构建运行失败的可能性，请注意
   * 统计数据的文件存放于WebContent下的log文件夹中，请将最新数据存入其中
   * 推荐->通过Eclipse构建
       * 在Eclipse新建Dynamic Java Project项目
       * 然后用该项目的两个文件夹将新建项目的WebContent和src目录覆盖，也可以把文件夹里的内容导入进对应文件夹
       * 通过tomcat启动项目即可运行项目
