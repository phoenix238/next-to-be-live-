#!/bin/bash
# Double-click this file to preview the site and the review tool on this Mac.
# The review tool needs a real web address to work, which is what this provides.
# Close this Terminal window when you're finished.

cd "$(dirname "$0")" || exit 1

PORT=8000
while lsof -i ":$PORT" >/dev/null 2>&1; do PORT=$((PORT+1)); done

echo ""
echo "  Serving this folder at http://localhost:$PORT"
echo ""
echo "    Website:      http://localhost:$PORT/index.html"
echo "    Review tool:  http://localhost:$PORT/review.html"
echo ""
echo "  Leave this window open. Press Ctrl+C to stop."
echo ""

sleep 1
open "http://localhost:$PORT/review.html"
python3 -m http.server "$PORT"
