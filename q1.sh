
#!/bin/bash

# Q1: Create a public GitHub repository called lab6

gh repo create lab6 \
    --public \
    --description "GitHub CLI Lab 6" \
    --confirm

# Verify repository details
gh repo view lab6

