#!/bin/bash
LOG=/var/log/secure
MESSAGE="Failed password for"
grep -i "$MESSAGE" "$LOG"
