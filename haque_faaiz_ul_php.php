<?php

$a = 5; //Global
$b = 3; //Global

function f1() {
	$a = 3; //Local
	print "a=$a in f1\n"; #a = 3
        f2();
}

function f2() {
	$c = $GLOBALS['b']; #accesses variables from global scope
	print "c=$c in f2\n"; #c= 3
	f3();
}

function f3() {
	global $a; #a defined as global
	$a = 2; #changes old global value
	print "a=$a in f3 \n"; #a = 2
}
f1();
print "a=$a b=$b in main\n"; #a=2 b=3

?>
