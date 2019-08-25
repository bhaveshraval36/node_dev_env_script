Dependency=""
Dependency_ENV=""

select_environment() {
    echo which dependency you want to install?
    select dependency_select in \
        "nvm" \
        ; do
        case ${dependency_select} in
            'nvm' )
                Dependency_ENV="nvm"
                Dependency="nvmScript"
                break;;
        esac
    done
    # nl    
}


function installing() {
    select_environment
    echo "installing ${Dependency_ENV} in your system .... "
    sh ./${Dependency}.sh 
}


case "$1" in
    *)  
        installing
        exit 1
esac