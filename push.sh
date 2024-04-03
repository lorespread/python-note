#!/usr/bin/env bash

BASE_NOTE_DIR=~/Documents/gitproject/lorespread

# git add --all && git commit -m "update" && git push -u origin main

# Define your project directories
PROJECT_DIRS=("python-note" "go-note")

for dir in "${PROJECT_DIRS[@]}"; do
    echo "🔥：更新文件夹: $BASE_NOTE_DIR/$dir"
    cd "$BASE_NOTE_DIR/$dir" || exit # Change to the directory, exit if it fails

    # Check if there are changes to be committed
    if git status | grep -q "无文件要提交，干净的工作区"; then
        echo "    无文件要提交，干净的工作区"
    else
        git add --all
        git commit -m "update"
        git push -u origin main
    fi
    echo "--------------------------------------------"
done
