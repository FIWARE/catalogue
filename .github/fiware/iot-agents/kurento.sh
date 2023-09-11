set -e

NAME="iot-agents/kurento/media-server" 
SOURCE="kurento/kurento-media-server"
DOCKER_TARGET="fiware/iotagent-ul"
QUAY_TARGET="quay.io/fiware/iotagent-ul"


REPOSITORY="$(git rev-parse --show-toplevel)/$NAME" 
TAGS="$(git -C $REPOSITORY rev-list --tags --max-count=1 )"
VERSION=$(git -C $REPOSITORY describe --exclude 'FIWARE*' --tags $TAGS )

echo "NOT DONE"
exit 0

function clone {
   echo 'cloning from '"$1 $2"' to '"$3"
   docker pull -q "$1":"$2"
   docker tag "$1":"$2" "$3":"$2"
   docker push -q "$3":"$2"
   
   if ! [ -z "$4" ]; then
        echo 'pushing '"$1 $2"' to latest'
        docker tag "$1":"$2" "$3":latest
        docker push -q "$3":latest
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

for i in "$@" ; do
    if [[ $i == "clean" ]]; then
        docker rmi -f $(docker images -a -q) | true
    fi
done
