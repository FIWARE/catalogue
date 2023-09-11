set -e

NAME="iot-agents/iotagent-json" 
SOURCE="telefonicaiot/iotagent-json"
DOCKER_TARGET="fiware/iotagent-json"
QUAY_TARGET="quay.io/fiware/iotagent-json"


REPOSITORY="$(git rev-parse --show-toplevel)/$NAME" 
TAGS="$(git -C $REPOSITORY rev-list --tags --max-count=1 )"
VERSION=$(git -C $REPOSITORY describe --exclude 'FIWARE*' --tags $TAGS )

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
        clone "$SOURCE" "$VERSION"-distroless "$DOCKER_TARGET"
    fi
    if [[ $i == "quay" ]]; then
        clone "$SOURCE" "$VERSION" "$QUAY_TARGET" true
        clone "$SOURCE" "$VERSION"-distroless "$QUAY_TARGET"
    fi
    echo ""
done

for i in "$@" ; do
    if [[ $i == "clean" ]]; then
        docker rmi -f $(docker images -a -q) | true
    fi
done
