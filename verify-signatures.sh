#!/bin/bash

# Script to verify GPG signatures in the Homebrew tap
# Usage: ./verify-signatures.sh [number-of-commits]

set -e

COMMITS=${1:-10}

echo "==================================="
echo "Homebrew Tap Signature Verification"
echo "==================================="
echo ""

# Check if we're in a git repository
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo "Error: Not in a git repository"
    exit 1
fi

echo "Repository: $(git remote get-url origin 2>/dev/null || echo 'local')"
echo "Branch: $(git branch --show-current)"
echo ""

# Check if GPG is available
if ! command -v gpg &> /dev/null; then
    echo "Error: GPG is not installed"
    echo "Install it with: brew install gnupg"
    exit 1
fi

# Import trusted keys if available
if [ -f ".trusted-keys.gpg" ]; then
    echo "Importing trusted keys from .trusted-keys.gpg..."
    gpg --import .trusted-keys.gpg 2>/dev/null || true
    echo ""
fi

echo "Verifying last $COMMITS commits..."
echo "-----------------------------------"
echo ""

signed_count=0
unsigned_count=0
failed_count=0

for i in $(seq 0 $((COMMITS - 1))); do
    commit_hash=$(git log --format="%H" -1 --skip=$i)
    commit_short=$(git log --format="%h" -1 --skip=$i)
    commit_subject=$(git log --format="%s" -1 --skip=$i)
    commit_author=$(git log --format="%an" -1 --skip=$i)
    
    echo "[$commit_short] $commit_subject"
    echo "  Author: $commit_author"
    
    if git verify-commit $commit_hash 2>/dev/null; then
        echo "  ✓ Signature: VALID"
        ((signed_count++))
    else
        # Check if commit has a signature at all
        if git log --format="%G?" -1 $commit_hash | grep -q "N"; then
            echo "  ✗ Signature: NONE"
            ((unsigned_count++))
        else
            echo "  ⚠ Signature: INVALID or UNTRUSTED"
            ((failed_count++))
        fi
    fi
    echo ""
done

echo "==================================="
echo "Summary"
echo "==================================="
echo "Total commits checked: $COMMITS"
echo "  ✓ Valid signatures: $signed_count"
echo "  ✗ No signature: $unsigned_count"
echo "  ⚠ Invalid/Untrusted: $failed_count"
echo ""

if [ $unsigned_count -gt 0 ] || [ $failed_count -gt 0 ]; then
    echo "⚠ Warning: Not all commits are properly signed"
    echo ""
    echo "To enable Homebrew tap trust, all commits should be signed with"
    echo "a trusted GPG key. See SIGNING.md for instructions."
    exit 1
else
    echo "✓ All checked commits are properly signed"
    echo ""
    echo "Users can trust this tap with:"
    echo "  brew trust codefresh-io/cli"
fi
