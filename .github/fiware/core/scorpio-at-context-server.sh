set -e

NAME="core/scorpio" 
SOURCE="scorpiobroker/at-context-server"
DOCKER_TARGET="fiware/scorpio-at-context-server"
QUAY_TARGET="quay.io/fiware/scorpio-at-context-server"

REPOSITORY="$(git rev-parse --show-toplevel)/$NAME" 
TAGS="$(git -C $REPOSITORY rev-list --tags --max-count=1 )"
VERSIONv=$(git -C $REPOSITORY describe --exclude 'FIWARE*' --tags $TAGS )

VERSION=`echo ${VERSIONv} | sed 's/-.*//'`

echo "VERSION - $VERSION"

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
        clone "$SOURCE" java-kafka-"$VERSION" "$DOCKER_TARGET" true
        clone "$SOURCE" ubuntu-kafka-"$VERSION" "$DOCKER_TARGET" || true
    fi
    if [[ $i == "quay" ]]; then
        clone "$SOURCE" java-kafka-"$VERSION" "$QUAY_TARGET" true
        clone "$SOURCE" ubuntu-kafka-"$VERSION" "$QUAY_TARGET"
    fi
    echo ""
done


