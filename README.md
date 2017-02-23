# 部署 GOST 到 VPS、Paas（openshift、arukas)

gost 版本 2.3

镜像: wangyi2005/gost-ws （https://hub.docker.com/r/wangyi2005/gost-ws/）

设置 3 个 环境变量:

1. MODE : 默认为ws，可设置为 wss、http2、tls等。

2. CERT_PEM： PEM格式证书，替换内置证书。

3. CERT_PEM : PEM格式私钥，替换内置私钥。

注意：

1、需替换 PEM 文件中的换行符为 \n ， 多行变一行。

2、如配置为 https 代理，可用 sniproxy 加速。

openshift 有两种模式，均用 secure route

1、edge 模式 （route TLS Settings Termination type : edge）

只支持 websocket，服务端 MODE 应为 ws。

gost server: -L ws://:8080 ，gost client: -F wss://route:443

2、Passthough 模式 （route TLS Settings Termination type : Passthough

可支持tls、http2，客户端和服务端应同为 tls、http2。

arukas 可使用 Endpoint: https://[hostname].arukascloud.io

可支持tls、wss。

1、wss配置：

gost server: -L ws://:8080 ， gost client: -F wss://Endpoint:443

2、tls配置：

gost server: -L http://:8080 ，gost client: -F tls://Endpoint:443  

可以 chrome+SwitchyOmega 设置 HTTPS代理 Endpoint:443
