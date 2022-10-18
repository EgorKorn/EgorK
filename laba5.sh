#!/bin/bash
x=$(cat $1 |tr -cd '{' | wc -m)
y=$(cat $1 |tr -cd '}' | wc -m)
if ((x == y)) ;then
echo "количество скобок совпадает,количество пар $x"
else
echo "количество не совпадает, найдено $x и $y"
fi