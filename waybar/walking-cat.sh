#!/bin/bash

# Walking cat animation frames
frames=(
  "::       "
  " ::      "
  "  ::     "
  "   ::    "
  "    ::   "
  "     ::  "
  "      :: "
  "       ::"
  "      :: "
  "     ::  "
  "    ::   "
  "   ::    "
  "  ::     "
  " ::      "
  "::       "
)

# Get current second to determine which frame to show
second=$(date +%s)
frame_index=$((second % ${#frames[@]}))

echo "${frames[$frame_index]}"
