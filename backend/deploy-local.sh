git checkout backend
git fetch

LOCAL=`git rev-parse HEAD`
REMOTE=`git rev-parse origin/backend`
if [[ $LOCAL == $REMOTE ]]; then
    echo "@@@@ No need to deploy"
    exit 0
fi

git merge

sh ./start.sh
