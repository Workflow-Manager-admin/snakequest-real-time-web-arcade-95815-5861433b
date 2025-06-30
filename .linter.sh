#!/bin/bash
cd /home/kavia/workspace/code-generation/snakequest-real-time-web-arcade-95815-5861433b/astro_frontend
npm run lint 
$ESLINT_EXIT_CODE
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
  exit 1
fi

