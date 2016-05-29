#!/bin/bash

repositories=(
    "git@github.com:pandaac-cdn/creatures.git"
    "git@github.com:pandaac-cdn/custom.git"
    "git@github.com:pandaac-cdn/defaults.git"
    "git@github.com:pandaac-cdn/flags.git"
    "git@github.com:pandaac-cdn/items.git"
    "git@github.com:pandaac-cdn/spells.git"
)


basePath=$1
basePath="${basePath}/cdn"
storagePath="${basePath}/repositories"

for repository in "${repositories[@]}"; do
    if [[ $repository =~ \:([a-zA-Z0-9_\-]+)\/([a-zA-Z0-9_\-]+)\.git ]]; then
        organisationName="${BASH_REMATCH[1]}"
        repositoryName="${BASH_REMATCH[2]}"
    else
        echo "Unable to fetch repository name from ${repository}, skipping..."
        continue
    fi

    tmpRepositoryPath="${storagePath}/${repositoryName}"

    if [ ! -d $tmpRepositoryPath ]; then
        mkdir -p "${tmpRepositoryPath}/.tmp"
        cd "${tmpRepositoryPath}/.tmp"
        git clone $repository .
    else
        cd "${tmpRepositoryPath}/.tmp"
        git fetch
    fi

    for branches in $(git for-each-ref --format='%(refname)' refs/remotes/); do
        branch=${branches/refs\/remotes\/origin\//}

        if [ "${branch}" == "HEAD" ]; then
            continue
        fi

        if [ -e "${basePath}/${repositoryName}/${branch}" ]; then
            cd "${basePath}/${repositoryName}/${branch}"

            status=`git pull`

            if [ "${status}" == "Already up-to-date." ]; then
                continue
            else
                continue
            fi
        else
            mkdir -p "${basePath}/${repositoryName}"
            cd "${basePath}/${repositoryName}"
            git clone $repository $branch
            cd $branch
            git checkout $branch
        fi

        echo $branch
    done

    rm -rf $tmpRepositoryPath
done

rm -r $storagePath
