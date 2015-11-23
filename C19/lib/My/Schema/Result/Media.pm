package My::Schema::Result::Media;
use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->table("media");
__PACKAGE__->add_columns(qw{
 id name location source attribution media_type_id license_id
});
__PACKAGE__->set_primary_key("id");

__PACKAGE__->belongs_to(
 license => "My::Schema::Result::License",
 "license_id",
 );

__PACKAGE__->belongs_to(
 media_type => "My::Schema::Result::MediaType",
 "media_type_id",
);

1;
