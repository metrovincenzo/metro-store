#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
python3 -m http.server 8080 &
SERVER_PID=$!
printf "Server running at http://localhost:8080 (PID %s)\n" "$SERVER_PID"
trap "kill $SERVER_PID" INT TERM
wait $SERVER_PID
