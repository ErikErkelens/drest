#!/bin/bash

# install this to the default virtualenv - it fails on python3 which is why
# we put it here rather than in .travis.yml
pip install simplejson --use-mirrors
pip install -r requirements.txt --use-mirrors


# forces python 3 builds to run the mockapi as python 2.7
source /home/vagrant/virtualenv/python2.7/bin/activate
./utils/run-mockapi.sh