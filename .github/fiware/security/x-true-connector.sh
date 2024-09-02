set -e

NAME="security/true-connector" 
SOURCE="??????/iotagent-opcua"
DOCKER_TARGET="fiware/iotagent-opcua"
QUAY_TARGET="quay.io/fiware/iotagent-opcua"


REPOSITORY="$(git rev-parse --show-toplevel)/$NAME" 
TAGS="$(git -C $REPOSITORY rev-list --tags --max-count=1 )"
VERSION=$(git -C $REPOSITORY describe --exclude 'FIWARE*' --tags $TAGS )

echo "NOT DONE - $VERSION"
exit 0

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
    fi
    if [[ $i == "quay" ]]; then
        clone "$SOURCE" "$VERSION" "$QUAY_TARGET" true
    fi
    echo ""
done


