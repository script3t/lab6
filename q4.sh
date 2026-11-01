
#!/bin/bash

# Q4: Remove collaborator from lab6 repository

REPO="script3t/lab6"
COLLABORATOR="steph3script"

echo "Removing $COLLABORATOR from $REPO..."

# Remove collaborator
gh api \
  --method DELETE \
  "repos/$REPO/collaborators/$COLLABORATOR"#!/bin/bash

# Q4: Remove collaborator from lab6 repository

REPO="script3t/lab6"
COLLABORATOR="steph3script"

echo "Removing $COLLABORATOR from $REPO..."

# Remove collaborator
gh api \
  --method DELETE \
  "repos/$REPO/collaborators/$COLLABORATOR"

echo "Checking collaborator permission..."

# Verify removal
gh api \
  "repos/$REPO/collaborators/$COLLABORATOR" \
  --silent

if [ $? -eq 0 ]; then
    echo "Collaborator still has access."
else
    echo "Collaborator no longer has repository access."
fi
