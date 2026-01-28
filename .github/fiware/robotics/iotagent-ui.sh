set -e

NAME="robotics/iotagent-ui" 
SOURCE="iotagent4fiware/iotagent-ui"
DOCKER_TARGET="fiware/iotagent-ui"
QUAY_TARGET="quay.io/fiware/iotagent-ui"


REPOSITORY="$(git rev-parse --show-toplevel)/$NAME" 
TAGS="$(git -C $REPOSITORY rev-list --tags --max-count=1 )"
VERSIONv=$(git -C $REPOSITORY describe --exclude 'FIWARE*' --tags $TAGS )
VERSION=${VERSIONv#"v."}
VERSION=1.0.3

DATE=`git -C $REPOSITORY log -1 --format=%ai $VERSIONv | awk '{print $1}'`

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
        clone "$SOURCE"-bff "$VERSION" "$DOCKER_TARGET" true
        clone "$SOURCE"-spa "$VERSION" "$DOCKER_TARGET" true
    fi
    if [[ $i == "quay" ]]; then
        clone "$SOURCE"-bff "$VERSION" "$QUAY_TARGET" true
        clone "$SOURCE"-spa "$VERSION" "$DOCKER_TARGET" true
    fi
    echo ""
done


