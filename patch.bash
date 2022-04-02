#!/bin/bash

FILE=OO_PubKey

if test -f "$FILE"; then
    echo "Patching docservice and convert"
    echo "skipped."
else
    add-apt-repository ppa:deadsnakes/ppa && apt-get update && apt-get install -y python3.6-dev
    wget https://bootstrap.pypa.io/get-pip.py
    python3.6 get-pip.py
    pip install pycrypto
    rm -f /var/www/onlyoffice/Data/license.lic
    echo "Patching docservice and convert"
    python3.6 patch.py
    echo "done."
fi
