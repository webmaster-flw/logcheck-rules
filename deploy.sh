#!/bin/bash

HOSTS=(
    linode2
    linode2-
    linode
    linode-
    adm
    waw
    edyta
    m81
    m81-
)

for host in ${HOSTS[*]}; do
    echo "syncing ${host}"
    rsync --timeout 5 -av --chown=root:logcheck ignore.d.server/ root@${host}:/etc/logcheck/ignore.d.server
done

# rsync -av --chown=root:logcheck ignore.d.server/ root@linode2:/etc/logcheck/ignore.d.server
# rsync -av --chown=root:logcheck ignore.d.server/ root@adm:/etc/logcheck/ignore.d.server
# rsync -av --chown=root:logcheck ignore.d.server/ root@edyta.org.pl:/etc/logcheck/ignore.d.server
