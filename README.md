# deploy GOST to  docker(openshift arukas)

gost ver 2.3

image: wangyi2005/gost-ws

default Environment Variables:

MODE: ws（wss、http2、tls， etc）

LISTEN_PORT: 8080

GOST support sniproxy 。 

# openshift

TLS Settings Termination type:edge

secure route: https://[host]-[project].44fs.preview.openshiftapps.com

gost server: -L ws://:8080

gost client: -F wss://[host]-[project].44fs.preview.openshiftapps.com:443

# arukas

Endpoint: https://[hostname].arukascloud.io

gost server: -L ws://:8080

gost client: -F wss://[hostname].arukascloud.io:443

gost server: -L http://:8080

gost client: -F tls://[hostname].arukascloud.io:443  OR chrome+SwitchyOmega HTTPS proxy Endpoint:443
