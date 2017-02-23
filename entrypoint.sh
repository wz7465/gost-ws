cd /go/bin
if [ "$CERT_PEM" != "$KEY_PEM" ]; then
  echo "$CERT_PEM" |  tee cert.pem
  echo "$KEY_PEM"  |  tee key.pem
  ./gost -L $MODE://:8080?cert=./cert.pem&key=./key.pem -logtostderr -v 3
else
  ./gost -L $MODE://:8080 -logtostderr -v 3
fi
