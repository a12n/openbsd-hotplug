#!/usr/bin/perl

use strict;
use warnings;

use File::Basename qw(basename);

my $mode = basename $0;
my $class = $ARGV[0];
my $name = $ARGV[1];

# Exit if it's not a disk drive
if ($class != 2) {
    exit 0
}

# TODO
