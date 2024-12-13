#!/usr/bin/env bash

set -euo pipefail

pnpm install
pnpm turbo prebuild --filter=app-a --summarize --dry=json

pnpm turbo prune app-a
cd out
pnpm install
pnpm turbo prebuild --filter=app-a --summarize --dry=json
