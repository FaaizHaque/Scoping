a  = 5 #a is global
def f1():
   a = 3 #a is local to f1
   b = 1 #b is local to f1
   c = 0 #c is local to f1
   print ("a:", a, " b:", b,  " in f1" ) #a: 5 b: 1
   def f2():
      global a #a is assigned as global
      a = 3 #a now changes global a
      b = 3 #still local variable in f1
      print ("a:", a, " b:", b,  " in f2 " ) #a: 3 b: b
      def f3():
       	 nonlocal c #nonlocal so can access most outer c 
       	 c = 3 #c in f1 changes from 0 to 3
         print ("c:", c, " in f3 " ) #c: 3
      f3();	
   f2();
   print("c:", c, " in f1 " ) #c: 3


print ("a:", a, " in main ")
f1();
print ("a:", a, " in main after calling f1 ")

