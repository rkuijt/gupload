#!/usr/bin/env bash
if [ -z ${GOOGLE_APPLICATION_CREDENTIALS+x} ]; then
  export GOOGLE_APPLICATION_CREDENTIALS=/app/config/credentials.json
fi
gupload --to $FOLDER_ID /app/upload/*
