#!/bin/sh
# Places the player's flag (CTF_FLAG_MAIN, given by the launcher) in a flags collection of the lab's MongoDB;
# without one (CI, a run by hand) the development flag.
dev='FLAG{dev-secdevlabs-insecure-go-project}'
flag="${CTF_FLAG_MAIN:-$dev}"
i=0; until mongo --quiet --eval 'db.runCommand({ping: 1})' >/dev/null 2>&1; do i=$((i+1)); [ $i -gt 90 ] && exit 1; sleep 2; done
mongo --quiet insecure_go_project --eval "var flag = '$flag'; db.flags.deleteMany({}); db.flags.insertOne({flag: flag});"
