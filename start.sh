#!/bin/sh

if [ -z ${POOL} ]; then
	echo "not set pool address... exit"
	exit 1
fi

if [ -n "${WALLET}" ]; then
	echo "POOL   -> $POOL"
	echo "WALLET -> $WALLET"
	echo "thread -> $THREAD_NUM"
	/root/cpuminer/minerd  -o $POOL -u $WALLET -t $THREAD_NUM
elif [ -n "${USERPASS}" ]; then
	echo "POOL     -> $POOL"
	echo "USERPASS -> $USERPASS"
	echo "thread   -> $THREAD_NUM"
	/root/cpuminer/minerd  -o $POOL -O $USERPASS -t $THREAD_NUM
fi
