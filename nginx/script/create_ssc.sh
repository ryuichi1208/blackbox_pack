#!/bin/sh
if [ $# -ne 2 ]; then
  echo "usage: $0 <fqdn> <passphrase>"
  exit 1;
fi

CN=$1
PP=$2
# 対話式で入力するdistinguished nameを一度に指定。コモンネームは第1引数
SJ="/C=JP/ST=Tokyo/L=Minato-ku/O=SAMPLES inc./OU=SAMPLES labo/CN=$CN"

# 秘密鍵を作成
openssl genrsa -des3 -passout pass:$PP -out $CN.key 2048

# パスフレーズなしの秘密鍵にする
openssl rsa -passin pass:$PP -in $CN.key -out $CN.key

# CSR出力
openssl req -new -sha256 -key $CN.key -out $CN.csr -subj "$SJ"

# CSRから証明書を生成
openssl x509 -days 3650 -req -signkey $CN.key < $CN.csr > $CN.crt

# 確認のためにCSR内容を表示
openssl req -noout -text -in $CN.csr
