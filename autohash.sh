#!/bin/bash

if [ $# -ne 3 ]; then
	echo $0: usage: plaintextPasswordFile outputHashFile HashType
	echo "Hash Types:
	des	standard 56 bit DES-based crypt(3)
	md5	MD5
	sha-256	SHA-256
	sha-512	SHA-512"
	exit 1
fi

while read -r line; do
	mkpasswd -m $3 -s $line >> $2
done < "$1"
