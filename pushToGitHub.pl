#!/usr/bin/perl -I/home/phil/perl/cpan/DataTableText/lib/ -I/home/phil/perl/cpan/GitHubCrud/lib/
#-------------------------------------------------------------------------------
# Push GeanyLua to GitHub
# Philip R Brenan at gmail dot com, Appa Apps Ltd Inc., 2021
#-------------------------------------------------------------------------------
use warnings FATAL => qw(all);
use strict;
use Carp;
use Data::Dump qw(dump);
use Data::Table::Text qw(:all);
use GitHub::Crud qw(:all);
use feature qw(say current_sub);

my $repo = q(GeanyLua);                                                         # Repo
my $home = qq(/home/phil/.config/geany/plugins/geanylua/);                      # Local files
my $user = q(philiprbrenan);                                                    # User

my @files = searchDirectoryTreesForMatchingFiles $home ;                        # Files to load

for my $s(@files)                                                               # Upload each selected file
 {my $t = swapFilePrefix($s, $home);
  my $p = readFile($s);
  my $w = writeFileUsingSavedToken($user, $repo, $t, $p);
  lll "$w $s $t";
 }
