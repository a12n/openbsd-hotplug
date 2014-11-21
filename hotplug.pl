#!/usr/bin/perl

use strict;
use warnings;

my $class = $ARGV[0];
my $name = $ARGV[1];

# Exit if it's not a disk drive
if ($class != 2) {
    exit 0
}

if ($0 =~ /attach/) {
    # TODO: attach
} elsif ($0 =~ /detach/) {
    # TODO: detach
}
