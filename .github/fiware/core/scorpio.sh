set -e

NAME="core/scorpio" 
SOURCE="scorpiobroker/all-in-one-runner"
DOCKER_TARGET="fiware/scorpio"
QUAY_TARGET="quay.io/fiware/scorpio"

REPOSITORY="$(git rev-parse --show-toplevel)/$NAME" 
TAGS="$(git -C $REPOSITORY rev-list --tags --max-count=1 )"
VERSIONv=$(git -C $REPOSITORY describe --exclude 'FIWARE*' --tags $TAGS )
VERSION=`echo ${VERSIONv} | sed 's/-.*//'`
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
        clone "$SOURCE" java-"$VERSION" "$DOCKER_TARGET" true
        clone "$SOURCE" java-kafka-"$VERSION" "$DOCKER_TARGET"
        #clone "$SOURCE" ubuntu-"$VERSION" "$DOCKER_TARGET"
        #clone "$SOURCE" ubuntu-kafka-"$VERSION" "$DOCKER_TARGET"
    fi
    if [[ $i == "quay" ]]; then
        clone "$SOURCE" java-"$VERSION" "$QUAY_TARGET" true
        clone "$SOURCE" java-kafka-"$VERSION" "$QUAY_TARGET"
        #clone "$SOURCE" ubuntu-"$VERSION" "$QUAY_TARGET"
        #clone "$SOURCE" ubuntu-kafka-"$VERSION" "$QUAY_TARGET"
    fi
    echo ""
done

DIR=$(dirname "$0")
$DIR/scorpio-at-context-server.sh $@                   
$DIR/scorpio-entity-manager.sh $@                       
$DIR/scorpio-history-entity.sh $@  
$DIR/scorpio-history-query.sh $@  
$DIR/scorpio-query-manager.sh  $@   
$DIR/scorpio-registry-manager.sh $@  
$DIR/scorpio-subscription-manager.sh $@  
$DIR/scorpio-subscription-registry.sh $@ 
