#!/bin/bash

echo -e "${CYAN}--- rbld_readme_rnd7_3d6253b() $* in file://${HOME}/REPOBARE/_repo/ubique/.d/.mul/rbld_readme.mul/.prc/rbld_readme.sh---${NORMAL}" #started functions

rbld_readme_rnd7_3d6253b() {

    # gig from file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh

    local FNN=${FUNCNAME[0]}
    local ARGS=("$@")
    local NARGS=$#
    local PPWD=$PWD
    local path_file=${HOME}/REPOBARE/_repo/ubique/.d/.mul/rbld_readme.mul/.prc/rbld_readme.sh
    local path_dir="$(dirname "$path_file")"

    # echo -e "${CYAN}--- $FNN() $* in file://${path_file}---${NORMAL}" #started functions

    cd ${path_dir} || {
        # hint="\$1: \$2: "
        _st_exit "in fs= file://$path_file , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://${path_dir}' : ${hint} : return 1"
        return 1
    }

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: 
TAGS: @
ARGS: \$1
EXAM: 
EXEC: 
CNTL: 
    _go  : _edit ${path_file}
RETURN: ( result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
ERROR: ( return 1 | ... )
    ${FNN} 
${NORMAL}"
    fi

    if [[ "_go" == "$1" ]]; then
        _edit "${path_file}"
        return 0
    fi

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} less more "in fs= file://${path_file} , line=${LINENO}, ${FNN}() : ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    # local _ARGS_=("$@")
    # _parr3e _ARGS_

    #{{ptr_path}}

    #! START BODY FN ---------------------------------------

    echo "START BODY FN : ${FNN}() $*"

    local cnx_in_sd=${HOME}/REPOBARE/_repo/ubique/.d/.mul/rbld_readme.mul/.in_cnx
    local ufl9_sh=

    for sd in $(_dd2e ${cnx_in_sd}); do
        ufl9_sh=${cnx_in_sd}/${sd}/res.md_ufl9
        [ -f "${ufl9_sh}" ] && {
            echo -e "${HLIGHT}--- . ${ufl9_sh} ---${NORMAL}"
            . "${ufl9_sh}"
        }
    done

    . ${HOME}/REPOBARE/_repo/ubique/.d/.mul/rbld_readme.mul/.prc/README.md_ufl9

    # rm {path_to_repo}/README.md
    # cp README.md {path_to_repo}/README.md
    _edit ${HOME}/REPOBARE/_repo/ubique/.d/.mul/rbld_readme.mul/.prc/README.md

    #{{body_fn}}

    #! END BODY FN ---------------------------------------

    return 0

}

rbld_readme_rnd7_3d6253b "$@"
