Chapter 9: Writing Your Own Methods
==================
```
def
  ...
end
```
When you write a method like this in the global scope, it gets associated
with the object representing the whole program.

9.1 Method Parameters
--------------
```
def say_moo number_of_moos
  puts 'mooooooo...'*number_of_moos
end
say_moo 3
puts 'oink-oink'
# This last line should give an error # because the parameter is missing...
say_moo
```
outputs
```
mooooooo...mooooooo...mooooooo...
oink-oink
#<ArgumentError: wrong number of arguments (0 for 1)>
```
9.2 Local Variables
-------------

When you declare a variable inside a method, it's **local**.


9.4 Return Variables
--------------
Every method returns something, even if it's `nil`.
`puts` returns nil.

The return value is simply the last **_expression_** evaluated in the method.
