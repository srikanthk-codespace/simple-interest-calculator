#!/bin/bash
# This script calculates simple interest given principal, annual rate of interest and time period in years.
# Do not use this in production. Sample purpose only.
# Author: Upkar Lidder (IBM)
# Additional Authors: Student contribution

# Input: p = principal amount, t = time in years, r = annual rate of interest
# Output: simple interest = (p * t * r) / 100

read -r -p "Enter the principal: " p
read -r -p "Enter rate of interest per year: " r
read -r -p "Enter time period in years: " t

if ! [[ "$p" =~ ^[0-9]+([.][0-9]+)?$ && "$r" =~ ^[0-9]+([.][0-9]+)?$ && "$t" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
  echo "Please enter valid non-negative numbers."
  exit 1
fi

awk -v p="$p" -v r="$r" -v t="$t" 'BEGIN { printf "The simple interest is: %.2f\n", (p*r*t)/100 }'
