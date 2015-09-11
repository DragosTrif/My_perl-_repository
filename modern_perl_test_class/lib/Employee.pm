package Employee;

use Moose;
extends 'Person';

has employee_number => ( is => 'rw', isa => 'Int' );

 1;