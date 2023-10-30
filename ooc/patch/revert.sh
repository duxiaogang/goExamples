#!/bin/sh

goSrcDir="/usr/local/Cellar/go/1.19.8/src"
#goSrcDir="/usr/local/Cellar/go/1.19.13/src"
runtimeDir="$goSrcDir/runtime"

if [ ! -d $runtimeDir ]; then
	echo "wrong dir!"
	exit 99
fi

# original files, from go1.19.8
# 540500cd1e95bfb2125e0ca39e6cadd5  preempt.go
# 34a802efc47d03e2913f6e8820a98422  preempt_amd64.s
# 2df535df276c0ef3e3af62a3e80582ba  runtime2.go
# 821ca1ff1fd268354fb3de2bb6a29921  proc.go

md5=`md5sum $runtimeDir/preempt.go.bak | awk '{ print $1 }'`
if [ $md5 != "540500cd1e95bfb2125e0ca39e6cadd5" ]; then
	echo "wrong go version, preempt.go.bak!"
	exit 1
fi

md5=`md5sum $runtimeDir/preempt_amd64.s.bak | awk '{ print $1 }'`
if [ $md5 != "34a802efc47d03e2913f6e8820a98422" ]; then
	echo "wrong go version, preempt_amd64.s.bak!"
	exit 2
fi

md5=`md5sum $runtimeDir/runtime2.go.bak | awk '{ print $1 }'`
if [ $md5 != "2df535df276c0ef3e3af62a3e80582ba" ]; then
	echo "wrong go version, runtime2.go.bak!"
	exit 3
fi

md5=`md5sum $runtimeDir/proc.go.bak | awk '{ print $1 }'`
if [ $md5 != "821ca1ff1fd268354fb3de2bb6a29921" ]; then
	echo "wrong go version, proc.go.bak!"
	exit 3
fi

echo "revert!"
#revert
cp -v $runtimeDir/preempt.go.bak $runtimeDir/preempt.go
cp -v $runtimeDir/preempt_amd64.s.bak $runtimeDir/preempt_amd64.s
cp -v $runtimeDir/runtime2.go.bak $runtimeDir/runtime2.go
cp -v $runtimeDir/proc.go.bak $runtimeDir/proc.go
echo "done!"

