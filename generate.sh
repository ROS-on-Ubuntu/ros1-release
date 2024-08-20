#!/bin/bash

# 遍历当前目录及其子目录
find . -type f -name 'package.xml' | while read -r package_xml; do
    # 获取包含 package.xml 的目录路径
    dir=$(dirname "$package_xml")
    
    echo "在目录 $dir 中发现了 package.xml，执行 bloom-generate 命令..."
    
    # 执行 bloom-generate 命令
   bash -c " cd $dir &&  bloom-generate rosdebian --os-name ubuntu --os-version jammy --ros-distro noetic"
done
