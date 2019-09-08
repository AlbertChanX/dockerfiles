#!/bin/bash
git remote add upstream https://github.com/vimagick/dockerfiles.git
git remote -v
git fetch upstream
git merge upstream/master
git push origin master

