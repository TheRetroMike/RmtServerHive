#!/usr/bin/env bash

. $MINER_DIR/$CUSTOM_MINER/h-manifest.conf

uptime=$(awk '{print $1}' /proc/uptime)
hs=[0.001]
temp=[1]
fan=[1]
ver="1.0.0"
bus_numbers=[null]

khs=0.001
stats=$(jq -n --argjson uptime "$uptime" --argjson hs "$hs" --argjson temp "$temp" --argjson fan "$fan" --arg algo "RMT Server" --arg ver "$ver" --argjson bus_numbers "$bus_numbers" '{$hs, $temp, $fan, $uptime, $algo, $ver, $bus_numbers}')
