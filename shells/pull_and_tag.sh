#!/bin/bash

# 第一步：询问是否登录
read -p "是否需要登录？(y/n) " login_choice

if [ "$login_choice" == "y" ]; then
    # 让用户输入账号
    read -p "请输入账号: " account
    # 让用户输入密码
    read -sp "请输入密码: " pwd
    echo ""
    # 执行登录
    echo ${pwd} | docker login -u ${account} --password-stdin registry.cn-zhangjiakou.aliyuncs.com
fi

# 第二步：如果已登录或无需登录，提示用户输入镜像并处理
echo "请输入要拉取的镜像列表（以空格分隔）："
read -a images
for image in "${images[@]}"
do
    docker pull registry.cn-hangzhou.aliyuncs.com/iuin/"$image"
    docker tag registry.cn-hangzhou.aliyuncs.com/iuin/"$image" "$image"
done
