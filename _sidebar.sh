#!/bin/bash

function getdir() {
    for files in $(ls $1); do
        full_path=$1"/"$files
        file_path=$1
        file_name=$f
        #如果是文件的话，在此过滤
        if [[ -f ${full_path} ]] && [[ ${files##*.} == "md" ]] && [[ ${files} != "_sidebar.md" ]] && [[ ${files} != "_coverpage.md" ]] && [[ ${files} != "README.md" ]] && [[ ${files} != "SUMMARY.md" ]]; then
            #arr[$file_path]=arr[$file_path]"\n- ["${files%.*}"]("${file_path/$(pwd)/}"/"${files%.*}")"
            echo "- ["${files%.*}"]("${file_path/$(pwd)/}"/"${files%.*}")" >>${file_path}/_sidebar.md
            #echo "filepath:" ${file_path}
            #echo "filename: ${files%.*}"
            #echo "extension: ${files##*.}"
        fi
        #如果发现文件夹下还有子文件夹，进行递归遍历
        if [[ -d ${full_path} ]] && [[ ${files} != "assets" ]]; then
            # 生成每个目录默认README.md页面
            echo "# "${files} >${full_path}/README.md
            # 生成嵌套的侧边结构文件
            current_relative_path=${full_path/$(pwd)/}
            echo "- [["${files}"]]("${current_relative_path}"/)" >>${file_path}/_sidebar.md
            parent_relative_path=${current_relative_path/${files}/}

            echo "- [[目录]](/)" >${full_path}/_sidebar.md
            # 分割路径到数组
            array=(${parent_relative_path//// })
            str=""
            for ((i = 0; i < ${#array[@]}; i++)); do
                str=${str}"/"${array[i]}
                echo "- [[目录"${str}"]]("${str}"/)" >>${full_path}/_sidebar.md
            done
            echo "---" >>${full_path}/_sidebar.md

            getdir ${full_path}
        fi
        #echo "------split------"
    done
}

folder_path=$(pwd)
echo "" >${folder_path}/_sidebar.md
getdir ${folder_path}
echo "- [关于](README)" >>${folder_path}/_sidebar.md
