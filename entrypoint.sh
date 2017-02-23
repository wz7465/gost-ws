cd /go/bin
if [ "$CERT_PEM" != "$KEY_PEM" ]; then
  echo -e "$CERT_PEM" > cert.pem
  echo -e "$KEY_PEM"  > key.pem
fi
./gost -L $MODE://:8080 -logtostderr -v=3

