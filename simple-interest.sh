#!/bin/bash

# This script calculates simple interest based on user input.

echo "--- Simple Interest Calculator ---"

# Prompt for Principal amount
echo "Enter the Principal amount (P):"
read P

# Prompt for Rate of Interest
echo "Enter the annual Rate of Interest (R in percentage):"
read R

# Prompt for Time period
echo "Enter the Time period in years (T):"
read T

# Calculate Simple Interest using the formula: SI = (P * R * T) / 100
# Using 'bc' for floating-point arithmetic
SI=$(echo "scale=2; ($P * $R * $T) / 100" | bc)

# Display the result
echo "----------------------------------"
echo "Principal Amount: $P"
echo "Rate of Interest: $R%"
echo "Time Period: $T years"
echo "Simple Interest (SI): $SI"
echo "----------------------------------"
