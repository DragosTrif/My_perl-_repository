package Point;
use Moose;

our $VERSION = '0.01';

has 'x' =>( is => 'ro', isa => 'Num', requierd => 1);
has 'y' =>( is => 'ro', isa => 'Num', requierd => 1);
1;