$a = 5; #a is global
sub f1 {
    my $a = 2; #static scoping, a is local to f1
    print "a=$a in f1\n";
    f2();
}

sub f2 {
    print "a=$a in f2\n"; #reference environment is only global
    $a = 7; #accesses global variable of a
    f3();
}

sub f3 {
    my $b = 0; #local variable is statically scoped to f3
    print "b=$b in f3\n"; 
    $b = 3;
}

print "a=$a b=$b in main \n"; #a = 5 from global and b not applicable
f1();
print "a=$a b=$b in main after calling functions\n";
#a = 7 since we changed the global value of a b still not applicable as local

