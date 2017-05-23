package MooXCmdTest::Cmd::Test::Cmd::Shortcut::Cmd::HashMerged;

use strict;
use warnings;

BEGIN
{
    my $moodel = $ENV{WHICH_MOODEL} || "Moo";
    eval "use $moodel;";
    $@ and die $@;
    $moodel->import;
}
use MooX::ConfigFromFile config_identifier => "MooXCmdTest", config_prefixes => [], config_hashmergeloaded => 1;
use MooX::Cmd with_config_from_file => 1;

has complex_attribute => (
    is       => "ro",
    required => 1
);

sub execute { @_ }

1;
