#!/bin/bash
# Q8: Merge the pull request using GitHub CLI

gh pr merge 2 \
  --repo script3t/lab6 \
  --merge \
  --delete-branch

echo "Q8 completed."
