set -e


NAME="processing/perseo/front-end" 
SOURCE="telefonicaiot/perseo-fe"
DOCKER_TARGET="fiware/perseo-fe"
QUAY_TARGET="quay.io/fiware/perseo-fe"


REPOSITORY="$(git rev-parse --show-toplevel)/$NAME" 
TAGS="$(git -C $REPOSITORY rev-list --tags --max-count=1 )"
VERSION=$(git -C $REPOSITORY describe --exclude 'FIWARE*' --tags $TAGS )
DATE=`git -C $REPOSITORY log -1 --format=%ai $VERSION | awk '{print $1}'`

function dateDiff {
    CURRENTDATE=`date +"%Y-%m-%d"`
    echo $(((`date -jf %Y-%m-%d "$CURRENTDATE" +%s` - `date -jf %Y-%m-%d "$1" +%s`)/86400))
}
echo "$SOURCE - $VERSION - $(dateDiff $DATE) days old."


function clone {
   echo 'cloning from '"$1 $2"' to '"$3"
   skopeo copy --multi-arch all docker://"$1":"$2"  docker://"$3":"$2"
   
   if ! [ -z "$4" ]; then
        echo 'pushing '"$1 $2"' to latest'
        skopeo copy --multi-arch all docker://"$1":"$2"  docker://"$3":latest
   fi
}

for i in "$@" ; do
    if [[ $i == "docker" ]]; then
        clone "$SOURCE" "$VERSION" "$DOCKER_TARGET" true
        clone "$SOURCE" "$VERSION"-distroless "$DOCKER_TARGET"
    fi
    if [[ $i == "quay" ]]; then
        clone "$SOURCE" "$VERSION" "$QUAY_TARGET" true
        clone "$SOURCE" "$VERSION"-distroless "$QUAY_TARGET"
    fi
    echo ""
done


