
#!/bin/bash

# Q3: Check collaborator acceptance status

REPO="script3t/lab6"
COLLABORATOR="steph3script"

echo "Checking collaborator access..."

gh api "repos/$REPO/collaborators/$COLLABORATOR/permission" \
  --jq '{user: .user.login, permission: .permission}'

echo ""
echo "Checking pending invitations..."

gh api "repos/$REPO/invitations" \
  --jq ".[] | select(.invitee.login == \"$COLLABORATOR\")"
