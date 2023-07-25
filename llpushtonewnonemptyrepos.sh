#!/bin/bash

#shellcheck source=/dev/null

source "${HOME}/repos/bash-libs/include.sh"
source "${PARAMETERS_SH}"
source "${DIR_SH}"
source "${FILE_SH}"
source "${PATH_SH}"
source "${STRING_SH}"
source "${TEXT_SH}"
source "${UTILS_SH}"

usage="Usage:\nllpushtonewnonemptyrepos.sh repos_address"

print_usage_based_on_condition "$(expected_parameters_number $# 1)" "$usage"

git remote add origin "$1"
#git fetch
git branch --set-upstream-to=origin/master master
git pull --rebase
git push
