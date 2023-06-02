#!/bin/bash

isort=(
    '' 
    [tool.isort] 
    'profile = "black"' 
    'line_length = 79' 
    'multi_line_output = 3'
)
taskipy=(
    '' 
    [tool.taskipy.tasks] 
    'lint = "blue --check --diff . && isort --check --diff ."' 
    'test = "pytest -s -x --cov=notas_musicais -vv"'
)


append_tool() {
    local tools=("$@")

    for tool in "${tools[@]}"
    do
        echo "$tool" >> $PWD/pyproject.toml
    done
}


poetry add --group dev blue
poetry add --group dev isort
poetry add --group dev pytest-cov
poetry add --group dev taskipy

append_tool "${isort[@]}"
append_tool "${taskipy[@]}"
