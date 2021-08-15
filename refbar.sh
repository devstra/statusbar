#!/bin/bash
for pid in $(pstree -lp | grep -- -statusbar.sh | sed "s/.*sleep(\([0-9]\+\)).*/\1/"); do kill -9 $pid; done
