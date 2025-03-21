#!/bin/bash

VSCODE_PATH="/usr/bin/code"  # Adjust if your VS Code path is different
CHROME_PATH="/usr/bin/google-chrome-stable" # Adjust if your Chrome path is different

CHATGPT_URL="https://chat.openai.com/"
DEEPSEEK_URL="https://deepseek.com/"
LEETCODE_URL="https://leetcode.com/problemset/all/"

if ! command -v "$VSCODE_PATH" &> /dev/null; then
  echo "VS Code not found at $VSCODE_PATH. Please verify the installation and path."
  exit 1
fi


if ! command -v "$CHROME_PATH" &> /dev/null; then
  echo "Chrome not found at $CHROME_PATH. Please verify the installation and path."
  exit 1
fi



"$VSCODE_PATH" &
"$CHROME_PATH" "$CHATGPT_URL" "$DEEPSEEK_URL" "$LEETCODE_URL" &

echo "Development environment setup complete."

exit 0