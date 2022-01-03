#!/usr/bin/env bash

set -e

npm install -g remark-cli@10.0.1

# shellcheck disable=SC2086
npm install -g $INPUT_PLUGINS

for path in ${INPUT_FILES}
do
  # shellcheck disable=SC2086
  npx remark "$path" --rc-path="$(realpath "${INPUT_RC_PATH}")" ${INPUT_ARGS}
done
