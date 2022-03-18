#!/bin/sh

# 复制项目的文件到对应docker路径，便于一键生成镜像。
usage() {
	echo "Usage: sh copy.sh"
	exit 1
}


# copy sql
echo "begin copy sql "
cp ../sql/ry_20210908.sql ./mysql/db
cp ../sql/ry_config_20220114.sql ./mysql/db

# copy html
echo "begin copy html "
cp -r ../ssrt-ui/dist/** ./nginx/html/dist


# copy jar
echo "begin copy ssrt-gateway "
cp ../ssrt-gateway/target/ssrt-gateway.jar ./ssrt/gateway/jar

echo "begin copy ssrt-auth "
cp ../ssrt-auth/target/ssrt-auth.jar ./ssrt/auth/jar

echo "begin copy ssrt-visual "
cp ../ssrt-visual/ssrt-monitor/target/ssrt-visual-monitor.jar  ./ssrt/visual/monitor/jar

echo "begin copy ssrt-modules-system "
cp ../ssrt-modules/ssrt-system/target/ssrt-modules-system.jar ./ssrt/modules/system/jar

echo "begin copy ssrt-modules-file "
cp ../ssrt-modules/ssrt-file/target/ssrt-modules-file.jar ./ssrt/modules/file/jar

echo "begin copy ssrt-modules-job "
cp ../ssrt-modules/ssrt-job/target/ssrt-modules-job.jar ./ssrt/modules/job/jar

echo "begin copy ssrt-modules-gen "
cp ../ssrt-modules/ssrt-gen/target/ssrt-modules-gen.jar ./ssrt/modules/gen/jar

