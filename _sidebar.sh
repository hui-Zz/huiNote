#! /bin/bash

echo "- [返回](/README)" >Apps/_sidebar.md
find ./Apps -mindepth 2 -name "*.md" | awk -F'/' 'BEGIN {RS=".md"} {arr[$2]=arr[$2]"\n    - ["$3"](/"$2"/"$3")"} END { num = asorti(arr, indices); for (i=1; i<=num; ++i) if (indices[i]) print "- "indices[i], arr[indices[i]]}' >>Apps/_sidebar.md

echo "- [返回](/README)" >DB/_sidebar.md
find ./DB -mindepth 2 -name "*.md" | awk -F'/' 'BEGIN {RS=".md"} {arr[$2]=arr[$2]"\n    - ["$3"](/"$2"/"$3")"} END { num = asorti(arr, indices); for (i=1; i<=num; ++i) if (indices[i]) print "- "indices[i], arr[indices[i]]}' >>DB/_sidebar.md

echo "- [返回](/README)" >Geek/_sidebar.md
find ./Geek -mindepth 2 -name "*.md" | awk -F'/' 'BEGIN {RS=".md"} {arr[$2]=arr[$2]"\n    - ["$3"](/"$2"/"$3")"} END { num = asorti(arr, indices); for (i=1; i<=num; ++i) if (indices[i]) print "- "indices[i], arr[indices[i]]}' >>Geek/_sidebar.md

echo "- [返回](/README)" >Java/_sidebar.md
find ./Java -mindepth 2 -name "*.md" | awk -F'/' 'BEGIN {RS=".md"} {arr[$2]=arr[$2]"\n    - ["$3"](/"$2"/"$3")"} END { num = asorti(arr, indices); for (i=1; i<=num; ++i) if (indices[i]) print "- "indices[i], arr[indices[i]]}' >>Java/_sidebar.md

echo "- [返回](/README)" >JavaEE/_sidebar.md
find ./JavaEE -mindepth 2 -name "*.md" | awk -F'/' 'BEGIN {RS=".md"} {arr[$2]=arr[$2]"\n    - ["$3"](/"$2"/"$3")"} END { num = asorti(arr, indices); for (i=1; i<=num; ++i) if (indices[i]) print "- "indices[i], arr[indices[i]]}' >>JavaEE/_sidebar.md

echo "- [返回](/README)" >Mobile/_sidebar.md
find ./Mobile -mindepth 2 -name "*.md" | awk -F'/' 'BEGIN {RS=".md"} {arr[$2]=arr[$2]"\n    - ["$3"](/"$2"/"$3")"} END { num = asorti(arr, indices); for (i=1; i<=num; ++i) if (indices[i]) print "- "indices[i], arr[indices[i]]}' >>Mobile/_sidebar.md

echo "- [返回](/README)" >Study/_sidebar.md
find ./Study -mindepth 2 -name "*.md" | awk -F'/' 'BEGIN {RS=".md"} {arr[$2]=arr[$2]"\n    - ["$3"](/"$2"/"$3")"} END { num = asorti(arr, indices); for (i=1; i<=num; ++i) if (indices[i]) print "- "indices[i], arr[indices[i]]}' >>Study/_sidebar.md

echo "- [返回](/README)" >Sys/_sidebar.md
find ./Sys -mindepth 2 -name "*.md" | awk -F'/' 'BEGIN {RS=".md"} {arr[$2]=arr[$2]"\n    - ["$3"](/"$2"/"$3")"} END { num = asorti(arr, indices); for (i=1; i<=num; ++i) if (indices[i]) print "- "indices[i], arr[indices[i]]}' >>Sys/_sidebar.md

echo "- [返回](/README)" >Think/_sidebar.md
find ./Think -mindepth 2 -name "*.md" | awk -F'/' 'BEGIN {RS=".md"} {arr[$2]=arr[$2]"\n    - ["$3"](/"$2"/"$3")"} END { num = asorti(arr, indices); for (i=1; i<=num; ++i) if (indices[i]) print "- "indices[i], arr[indices[i]]}' >>Think/_sidebar.md

echo "- [返回](/README)" >UI/_sidebar.md
find ./UI -mindepth 2 -name "*.md" | awk -F'/' 'BEGIN {RS=".md"} {arr[$2]=arr[$2]"\n    - ["$3"](/"$2"/"$3")"} END { num = asorti(arr, indices); for (i=1; i<=num; ++i) if (indices[i]) print "- "indices[i], arr[indices[i]]}' >>UI/_sidebar.md

echo "- [返回](/README)" >Work/_sidebar.md
find ./Work -mindepth 2 -name "*.md" | awk -F'/' 'BEGIN {RS=".md"} {arr[$2]=arr[$2]"\n    - ["$3"](/"$2"/"$3")"} END { num = asorti(arr, indices); for (i=1; i<=num; ++i) if (indices[i]) print "- "indices[i], arr[indices[i]]}' >>Work/_sidebar.md

