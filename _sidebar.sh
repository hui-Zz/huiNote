#!/bin/bash

function getdir(){
    for files in `ls $1`
    do
        full_path=$1"/"$files
        file_path=$1
        file_name=$f
#如果是文件的话，则文件名和后缀相同，故在此过滤
        if [[ -f ${full_path} ]] && [[ ${files##*.} == "md" ]] && [[ ${files} != "_sidebar.md" ]] && [[ ${files} != "_coverpage.md" ]] && [[ ${files} != "README.md" ]] && [[ ${files} != "SUMMARY.md" ]]; then
            #arr[$file_path]=arr[$file_path]"\n- ["${files%.*}"]("${file_path/$(pwd)/}"/"${files%.*}")"
            echo "- ["${files%.*}"]("${file_path/$(pwd)/}"/"${files%.*}")">>${file_path}/_sidebar.md
            #echo "filepath:" ${file_path}
            #echo "filename: ${files%.*}"
            #echo "extension: ${files##*.}"
        fi
#如果发现文件夹下还有子文件夹，进行递归遍历
        if [[ -d ${full_path} ]] && [[ ${files} != "assets" ]]; then
            dir_path=${full_path/$(pwd)/}
            echo "- ["${files}"]("${dir_path}"/)">>${file_path}/_sidebar.md
            echo "- [[上一层]]("${dir_path/${files}/}")">${full_path}/_sidebar.md
            getdir ${full_path}
        fi
        #echo "------split------"
    done
}

folder_path=$(pwd)
echo "">${folder_path}/_sidebar.md
getdir ${folder_path}
echo "- [关于](README)">>${folder_path}/_sidebar.md