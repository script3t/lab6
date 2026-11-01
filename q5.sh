#!/bin/bash
# Q5: Create an issue in the lab6 repository

REPO="script3t/lab6"

gh issue create \
  --repo "$REPO" \
  --title "create helloworld echo file" \
  --body "echo hello Pearse from lab6" \
  --assignee script3t \
  --label enhancement

echo "Q5 completed."
