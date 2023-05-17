#!/usr/bin/env bash
export GOOGLE_APPLICATION_CREDENTIALS=/app/config/credentials.json
gupload --to $FOLDER_ID /app/upload/*
