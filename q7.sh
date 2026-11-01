#!/bin/bash
# Q7: Create a pull request using GitHub CLI

gh pr create \
  --repo script3t/lab6 \
  --base main \
  --head Q12345 \
  --title "Merge Q12345 into main" \
  --body "This pull request adds the lab6 answers for Q1 to Q5."

echo "Q7 completed."
