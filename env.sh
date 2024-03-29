Dependency=""
Dependency_ENV=""

select_environment() {
    echo which dependency you want to install?
    select dependency_select in \
        "nvm" \
        "git" \
        "yarn" \
        "mongodb" \
        ; do
        case ${dependency_select} in
            'nvm' )
                Dependency_ENV="nvm"
                Dependency="nvmScript"
                break;;
            'git' )
                Dependency_ENV="git"
                Dependency="gitScript"
                break;;
            'yarn' )
                Dependency_ENV="yarn"
                Dependency="yarnScript"
                break;;    
             'mongodb' )
                Dependency_ENV="mongodb"
                Dependency="mongodbScript"
                break;;    
        esac
    done    
    # nl    
}


function installing() {
    select_environment
    echo "installing ${Dependency_ENV} in your system .... "
    sh ./${Dependency}.sh 
    echo "=> Plaese Close and reopen your terminal"
}


case "$1" in
    *)  
        installing
        exit 1
esac