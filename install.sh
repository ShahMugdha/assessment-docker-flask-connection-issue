#!/bin/bash

# Update package lists
apt-get update
# Check Python
if ! python3 -c 'import sys; sys.exit(sys.version_info < (3,7))'; then
   apt-get install python3.7
fi
# Check Docker
if ! [ -x "$(command -v docker)" ]; then
   apt-get install docker-ce docker-ce-cli containerd.io
fi
# Check Flask
if ! python3 -c 'import flask'; then
   pip install Flask
fi