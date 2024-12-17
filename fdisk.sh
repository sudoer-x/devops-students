#!/bin/bash

fdisk /dev/sda <<EOF
o
n
p
1
2048
+200M
EOF

for i in {1..4}; do
    fdisk /dev/sda <<EOF
n
p
$i
2048
+200M
EOF
done