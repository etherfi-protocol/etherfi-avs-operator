#!/bin/bash

# Define the input file and the base name for output files
input_file="metadata.json"
base_output_file="metadata"

tmp_file="tmp.json"

# Loop through numbers 1 to 20
for i in {1..20}; do
    # Define the output file name
    output_file="${base_output_file}.${i}.json"
    
    # Copy the input file to the output file
    cp "$input_file" "$output_file"
    
    # Replace the string "NAME" with "ether.fi-$i" in the output file
    sed "s/NAME/ether.fi-$i/g" "$output_file" > "$tmp_file"
    mv "$tmp_file" "$output_file"

    #sed "s|NAME|ether.fi-$i|g" "$output_file" > "$output_file"
done

