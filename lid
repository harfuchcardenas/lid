#!/usr/bin/perl

use strict;
use warnings;

# --- Configuration ---
my $input_file = "/etc/systemd/logind.conf";   # Replace with the name of your file
my $string_to_find = "HandleLidSwitch=ignore"; # Replace with the string you want to find
my $string_to_replace = "HandleLidSwitch=suspend";          # Replace with the string you want to replace with

# --- Processing ---

# Open the original file for reading
open (my $fh_input, '<', $input_file)
    or die "Could not open file '$input_file' for reading: $!";

# Create a temporary file to write changes
my $temp_file = "$input_file.temp";
open (my $fh_output, '>', $temp_file)
    or die "Could not open temporary file '$temp_file' for writing: $!";

# Read the file line by line, perform the replacement, and write to the temporary file
while (my $line = <$fh_input>) {
    $line =~ s/\Q$string_to_find\E/$string_to_replace/g;
    print $fh_output $line;
}

# Close both files
close $fh_input;
close $fh_output;

# Rename the temporary file to the original name (overwriting the original)
rename $temp_file, $input_file
    or die "Could not rename '$temp_file' to '$input_file': $!";

print "The replacement has been successfully completed in '$input_file'.\n";
#To make the changes take effect run sudo systemctl restart systemd-logind
