package Data::Dumper::AutoEncode::Decode;
use strict;
use warnings;
use utf8;

use Encode qw();
use Data::Dumper::AutoEncode;
use parent qw/Exporter/;
our @EXPORT = qw/dDumper eDumper Dumper/;

our $VERSION = '0.3';

sub dDumper {
    return Encode::decode($Data::Dumper::AutoEncode::ENCODING || 'utf8', eDumper(@_))
}

1;

