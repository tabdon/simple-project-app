#!/bin/bash
isExistApp=`pgrep uwsgi`
if [[ -n  $isExistApp ]]; then
    echo "stopping uwsgi" >> /home/ubuntu/codedeploy.txt
    sudo stop uwsgi
else
    echo "not stopping uwsgi" >> /home/ubuntu/codedeploy.txt
fi