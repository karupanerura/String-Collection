# NAME

String::Collection - It's new $module

# SYNOPSIS

    use String::Collection qw/strcol/;

    my $col1 = strcol(qw/xxx foo bar/);
    my $col2 = strcol(qw/xxx hoge fuga/);

    # in collection?
    say 'foo' eq $col1 ? 1 : 0; ## true
    say 'foo' eq $col2 ? 1 : 0; ## false

    # not in collection?
    say 'foo' ne $col1 ? 1 : 0; ## false
    say 'foo' ne $col2 ? 1 : 0; ## true

    # match in collection?
    say $col1 =~ /^fo/ ? 1 : 0; ## true
    say $col2 =~ /^fo/ ? 1 : 0; ## false

    # is same collection?
    say $col1 eq $col2 ? 1 : 0; ## false
    say $col1 == $col2 ? 1 : 0; ## false

    # OR("|", ".", "+")
    say 'xxx'  eq $col1 | $col2 ? 1 : 0; ## true
    say 'bar'  eq $col1 | $col2 ? 1 : 0; ## true
    say 'hoge' eq $col1 | $col2 ? 1 : 0; ## true
    say 'yyy'  eq $col1 | $col2 ? 1 : 0; ## false

    # AND("&", "*")
    say 'xxx'  eq $col1 & $col2 ? 1 : 0; ## true
    say 'foo'  eq $col1 & $col2 ? 1 : 0; ## false
    say 'fuga' eq $col1 & $col2 ? 1 : 0; ## false
    say 'yyy'  eq $col1 & $col2 ? 1 : 0; ## false

    # XOR("^")
    say 'xxx'  eq $col1 ^ $col2 ? 1 : 0; ## false
    say 'foo'  eq $col1 ^ $col2 ? 1 : 0; ## true
    say 'fuga' eq $col1 ^ $col2 ? 1 : 0; ## true
    say 'yyy'  eq $col1 ^ $col2 ? 1 : 0; ## false

# DESCRIPTION

String::Collection is ...

# LICENSE

Copyright (C) karupanerura.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

karupanerura <karupa@cpan.org>
