#!/bin/bash
uwsgi --socket /tmp/catalyst.sock --module core.wsgi --chmod-socket=666
sudo nginx -s reload