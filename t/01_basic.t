use strict;
use Test::More;

use String::Collection qw/strcol/;

my $col1 = strcol(qw/xxx foo bar/);
my $col2 = strcol(qw/xxx hoge fuga/);
my $col3 = strcol(qw/xxx hoge fuga/);

# in collection?
ok   'foo' eq $col1; ## true
ok ! 'foo' eq $col2; ## false

# not in collection?
ok ! 'foo' ne $col1; ## false
ok   'foo' ne $col2; ## true

# match in collection?
ok   $col1 =~ /^fo/; ## true
ok ! $col2 =~ /^fo/; ## false

# is same collection?
ok ! $col1 eq $col2; ## false
ok ! $col1 == $col2; ## false
ok   $col2 == $col3; ## true
ok   $col2 eq $col3; ## true

# OR("|", ".", "+")
ok   'xxx'  eq $col1 | $col2; ## true
ok   'bar'  eq $col1 | $col2; ## true
ok   'hoge' eq $col1 | $col2; ## true
ok ! 'yyy'  eq $col1 | $col2; ## false

# AND("&", "*")
ok   'xxx'  eq $col1 & $col2; ## true
ok ! 'foo'  eq $col1 & $col2; ## false
ok ! 'fuga' eq $col1 & $col2; ## false
ok ! 'yyy'  eq $col1 & $col2; ## false

# XOR("^")
ok ! 'xxx'  eq $col1 ^ $col2; ## false
ok   'foo'  eq $col1 ^ $col2; ## true
ok   'fuga' eq $col1 ^ $col2; ## true
ok ! 'yyy'  eq $col1 ^ $col2; ## false

done_testing;

