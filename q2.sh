
#!/bin/bash

# Q2: Add a collaborator to the lab6 repository

REPO="script3t/lab6"
COLLABORATOR="steph3script"

echo "Adding $COLLABORATOR to $REPO..."

# Add collaborator with push permission
gh api \
  --method PUT \
  "repos/$REPO/collaborators/$COLLABORATOR" \
  -f permission=push

echo "Checking pending invitations..."

# Display pending collaborator invitations
gh api "repos/$REPO/invitations" \
  --jq '.[] | {invitee: .invitee.login, permissions: .permissions}'

echo "Q2 completed."

