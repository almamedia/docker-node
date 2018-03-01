#!/bin/bash

# Either use the LOCAL_USER_ID if passed in at runtime or fallback
USER_ID=${LOCAL_USER_ID:-9001}

# if user with given ID already exists, remove it
USER_NAME=$(getent passwd "$USER_ID" | cut -d: -f1)
if [ -n "${USER_NAME}" ]; then
	deluser --remove-home $USER_NAME
fi

# Add local user
adduser -D -u $USER_ID user
export HOME=/home/user
chown user /app

if [ -z $1 ]; then
	exec su-exec user bash
else
	exec su-exec user "$@"
fi
