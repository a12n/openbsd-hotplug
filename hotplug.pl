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

`/sbin/disklabel -t $name` =~ /^(.+?)\s*\|.*t([d-z])=MSDOS/s || exit 1;

my $label = lc $1;
my $part1 = $2;

$label =~ s/\s+/ /;
$label =~ s/\s/_/;
$label =~ y/a-z0-9_//cd;
if ($label eq '') {
    exit 1
}

# TODO
