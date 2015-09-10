package Setter_Getter;
use Moose;
use MooseX::FollowPBP; # get_name and set_name will now be created


 has 'name' => (
 is => 'rw',
 isa => 'Str',
);
 1;
