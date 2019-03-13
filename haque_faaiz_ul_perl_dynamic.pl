$a = 10; #global
sub f1 {
    my $a = 2; #static
    local $b = 3; #dynamic
    print "a=$a b=$b in f1 \n"; #a = 2 b = 3
    f2();
}

sub f2 {
    print "a=$a b=$b in f2 \n"; #a = 10 b = 3
    f3();
}

sub f3 {
    $b = 7; #still local 
    print "a=$a b=$b in f3 \n"; #a = 10 b = 7
}

f1();
print "a=$a b=$b in main \n"; #a = 10 b = 
