set -e

NAME="core/o2k-connector" 
SOURCE="rdlabengpa/o2k-connector"
DOCKER_TARGET="fiware/o2k-connector"
QUAY_TARGET="quay.io/fiware/o2k-connector"


REPOSITORY="$(git rev-parse --show-toplevel)/$NAME" 
TAGS="$(git -C $REPOSITORY rev-list --tags --max-count=1 )"
VERSIONv=$(git -C $REPOSITORY describe --exclude 'FIWARE*' --tags $TAGS )
VERSION=${VERSIONv#"v"}

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
        clone "$SOURCE" "$VERSION" "$DOCKER_TARGET" true
    fi
    if [[ $i == "quay" ]]; then
        clone "$SOURCE" "$VERSION" "$QUAY_TARGET" true
    fi
    echo ""
done


