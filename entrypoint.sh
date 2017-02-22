cd /go/bin
if [ "$CERT_PEM" != "$KEY_PEM" ]; then
  echo "$CERT_PEM" |  tee cert.pem
  echo "$KEY_PEM"  |  tee key.pem
fi
./gost -L $MODE://:8080 -logtostderr -v=3

