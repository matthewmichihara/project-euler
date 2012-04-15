use strict;
use Graph;

open FILE, "keylog.txt" or die $!;
my @attempts = <FILE>;
close FILE;

chomp @attempts;

# Solution is to just topological sort the directed acyclic graph.
my $graph = Graph->new;

foreach (@attempts) {
	my @a = split //, $_;
	$graph->add_edge($a[0], $a[1]);
	$graph->add_edge($a[0], $a[2]);
	$graph->add_edge($a[1], $a[2]);
}

print $graph->topological_sort;