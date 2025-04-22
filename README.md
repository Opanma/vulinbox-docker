# vulinbox-docker
### vulinbox是什么
Vulinbox 靶场是 Yaklang 项目的配套设施，旨在模拟各种计算机系统和应用程序中的安全漏洞，以供 Yaklang 用户实验、测试和学习。
该项目提供了一系列的靶场环境，包含了多个安全漏洞，供用户学习、分析和插件测试。
靶场来自于：https://yaklang.com/Yaklab/vulinbox/vulinbox
### vulinbox-docker是什么
Vulinbox-docker是把上面的vulinbox靶场环境直接打包成Dockerfile，然后独立运行在Docker容器中。
### 为什么搞这个
纯粹是为了给靶场搞一个单独的环境，放在公网方便测试，因为靶场能执行命令等操作，如果直接放在公网可能会被破坏。
### 使用方式
```
git clone  https://github.com/Opanma/vulinbox-docker.git
cd vulinbox-docker
wget  https://oss-qn.yaklang.com/vulinbox/latest/vulinbox_linux_amd64
docker build -t vulinbox-image .
docker run -d -p 8787:8787 vulinbox-image
```
