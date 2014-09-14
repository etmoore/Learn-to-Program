Pop Quiz:
---------
**The ten methods that have been covered so far**

1. puts
2. chomp
3. gets
4. +
5. -
6. *
7. /
8. to_i
9. to_f
10. to_s

Methods
------
**methods** are like a verb.

Every method is performed by some **object** (even if it doesn't have a `.` in front of it). You can always see what object you are in by running `puts self`.

Math
-----
`rand` will give you a random float greater than or equal to 0 and less than 1. If you pass in an integer, it will give you any random number greater than or equal to 0 and less than the integer passed in. **note** `rand(5)` will give you an integer between 0 and **4**. If you want a random number between 0 and 100, you need to write `rand(101)`.

`srand` allows you to set a **seed** so that the *same* random number gets returned. 
```
srand 1976 
puts(rand(100)) 
puts(rand(100)) 
puts(rand(100)) 
puts(rand(100)) 
puts ''
srand 1976 
puts(rand(100)) 
puts(rand(100)) 
puts(rand(100)) 
puts(rand(100))
```
will output 
```
50
21
80
15
 
50
21
80
15
```
