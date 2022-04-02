#!/bin/bash

FILE=OO_PubKey

if test -f "$FILE"; then
    echo "Patching docservice and convert"
    echo "skipped."
else
    add-apt-repository ppa:deadsnakes/ppa && apt-get update && apt-get install -y python3-dev build-essential
    wget https://bootstrap.pypa.io/get-pip.py
    python3 get-pip.py
    pip install pycryptodome 
    rm -f /var/www/onlyoffice/Data/license.lic
    echo "Patching docservice and convert"
    python3 patch.py
    echo "done."
fi
