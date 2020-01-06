container_id=${1:-""}

if [[ -z "$container_id" ]]; then
    printf "Usage ./scrapemem.sh <container_id>\n"
    exit
fi

while true; do
    printf "%s @ %f\n" "$(docker stats --no-stream --format '{{.MemUsage}}' $container_id)" "$(echo $(date +%s.%N))"
    sleep 1
done