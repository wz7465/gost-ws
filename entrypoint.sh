if [ "$CERT_PEM" != "$KEY_PEM" ]; then
  echo "$CERT_PEM" |  tee /go/bin/cert.pem
  echo "$KEY_PEM"  |  tee /go/bin/key.pem
fi
/go/bin/gost -L $MODE://:8080 -logtostderr -v=3

