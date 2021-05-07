#!/usr/bin/env bash

set -e

FILES="${INPUT_FILES/\n/ }"

# shellcheck disable=SC2086
npm install -g $INPUT_PLUGINS

# shellcheck disable=SC2086
npx remark "$FILES" ${INPUT_ARGS}

