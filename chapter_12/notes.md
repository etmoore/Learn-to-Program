# Chapter 12: New Classes of Objects #
Class names are always capitalized.
ex: Array, File, Dir, String, Integer, Float

To create a new object from a class, use the `new` method.
```ruby
alpha = Array.new + [12345]
beta = String.new + 'hello'
karma = Time.new

puts "alpha = #{alpha}"
puts "beta = #{beta}"
puts "karma = #{karma}"
```
=> alpha = 12345
=> beta = hello
=> karma = Fri Oct 03 03:42:39 -0700 2014

Because we can create array and string literals so easily, we rarely use `new` to create them.

Numbers are special exceptions. You cannot create an integer with `Integer.new`. Integers must be created with integer literals.

## 12.1 The Time Class ##
```ruby
time = Time.new # The moment we ran this code.
time2 = time + 60 #One minute later
```
You can add and subtract time objects.

Use `Time.local` to make a time for a specific moment.
```ruby
puts Time.local(2000, 1, 1) # Y2K
puts Time.local(1976, 8 , 3, 13, 31) # When the author was born
```

If you want to avoid time zones and daylight savings, use `Time.gm`
```ruby
puts Time.gm(1955, 11, 5)
```

You can compare times using comparison operators. Earlier times are *less* than later times.
If you subtract one time from another, you'll get the number of seconds between them.

```ruby
my_birthday = Time.new(1987, 7, 25)
ryan_birthday = Time.new(1990, 9, 18)
difference = ryan_birthday - my_birthday # The number of seconds between Ryan's birthday and my birthday.
```

**Snag with Time class**
`Time` thinks that the world began at **epoch**, midnight, January 1, 1970, GMT.
*You can't have times more than 2 billion seconds away from epoch!! - roughly December 1901 to January 2038*

Ruby does provide other classes, such as `Date` and `Date-Time` that can handle just about any point in history, but they're much more complicated than `Time`
