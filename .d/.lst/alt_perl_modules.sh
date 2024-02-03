#!/usr/bin/bash

perl_dot_lst=${REPO_PATH}/NPerl/.d/.lst

apt-cache search perl | grep perl- | grep "::" >"${perl_dot_lst}"/alt_perl_modules.lst

