package Calculator;
use strict;
use warnings;

use constant DEFAULT => '';

my $display = DEFAULT;

sub display {
    return $display;
}

sub click {
    my ($input) = @_;
    if ($input eq '=') {
        $display = eval $display;
    } elsif ($input =~ /^[0-9+]$/) {
        $display .= $input;
    }
}

sub reset {
    $display = DEFAULT;
}

1;

