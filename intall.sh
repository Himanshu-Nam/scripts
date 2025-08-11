#!/bin/bash
<<help
this will install the pakage you want you just give arg
help
echo "Intsalling $1"
sudo apt-get update > /dev/null
sudo apt-get install $1 -y >/dev/null
echo "Completed"

