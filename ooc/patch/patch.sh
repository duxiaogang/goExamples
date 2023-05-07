#!/bin/sh

goSrcDir="/usr/local/Cellar/go/1.19.8/src"
runtimeDir="$goSrcDir/runtime"

# original files, from go1.19.8
# 540500cd1e95bfb2125e0ca39e6cadd5  preempt.go
# 34a802efc47d03e2913f6e8820a98422  preempt_amd64.s
# 2df535df276c0ef3e3af62a3e80582ba  runtime2.go

md5=`md5sum $runtimeDir/preempt.go | awk '{ print $1 }'`
if [ $md5 != "540500cd1e95bfb2125e0ca39e6cadd5" ]; then
	echo "wrong go version, preempt.go!"
	exit 1
fi

md5=`md5sum $runtimeDir/preempt_amd64.s | awk '{ print $1 }'`
if [ $md5 != "34a802efc47d03e2913f6e8820a98422" ]; then
	echo "wrong go version, preempt_amd64.s!"
	exit 2
fi

md5=`md5sum $runtimeDir/runtime2.go | awk '{ print $1 }'`
if [ $md5 != "2df535df276c0ef3e3af62a3e80582ba" ]; then
	echo "wrong go version, runtime2.go!"
	exit 3
fi

echo "backup & replace!"
#backup
cp -v $runtimeDir/preempt.go $runtimeDir/preempt.go.bak
cp -v $runtimeDir/preempt_amd64.s $runtimeDir/preempt_amd64.s.bak
cp -v $runtimeDir/runtime2.go $runtimeDir/runtime2.go.bak
#replace
cp -v preempt.go.new $runtimeDir/preempt.go
cp -v preempt_amd64.s.new $runtimeDir/preempt_amd64.s
cp -v runtime2.go.new $runtimeDir/runtime2.go
echo "done!"

