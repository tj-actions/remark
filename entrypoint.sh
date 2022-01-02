#!/usr/bin/env bash

set -e

npm install -g remark-cli

# shellcheck disable=SC2086
npm install -g $INPUT_PLUGINS

for path in ${INPUT_FILES}
do
  # shellcheck disable=SC2086
  npx remark "$path" ${INPUT_ARGS}
done
