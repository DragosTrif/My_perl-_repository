 package Test::Person::Employee;

 use Test::Most;
 use base 'Test::Person';

  sub class {'Person::Employee'}

  sub employee_number : Tests(3) {
         my $test     = shift;
         my $employee = $test->class->new;

         can_ok $employee, 'employee_number';
         ok !defined $employee->employee_number,
             '... and employee_number should not start out defined';

         $employee->employee_number(4);
         is $employee->employee_number, 4,
             '... but we should be able to set its value';
     }

     1;