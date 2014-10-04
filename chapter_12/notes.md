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

## 12.3 The Hash Class ##
Though strings are typically used as **keys** in hashes, you can use any object, even arrays and other hashes.
```ruby
weird_hash = Hash.new

weird_hash[12] = 'monkeys'
weird_hash[[]] = 'emptiness'
weird_hash[Time.new] = 'no time like the present'
```

## 12.4 Ranges ##
A **Range** represents an interval of numbers, letters, or anything that you can compare with _this < that_ .  Typically, you only use ranges for integers, though.

```ruby
# This is your range literal.
letters = 'a'..'c'

# Convert range to array.
puts(['a', 'b', 'c']) == letters.to_a)

# Iterate over a range:
('A'..'Z').each do |letter|
  print letter
end
puts

god_bless_the_70s = 1970..1979
puts god_bless_the_70s.min
puts god_bless_the_70s.max
puts (god_bless_the_70s.include?(1979))
puts (god_bless_the_70s.include?(1980))
puts (god_bless_the_70s.include?(1974.5))
```
output:
```
true 
ABCDEFGHIJKLMNOPQRSTUVWXYZ 
1970
1979
true
false
true
```

## 12.5 Stringy Superpowers ##
Some array methods are also available to strings.
The `[...]` method lets you pass in a number and get the character code at that position.
```ruby
da_man = 'Mr. T'
big_T = da_man[4]
puts big_T

puts ?T
puts 84.chr
```
outputs
```
84
84
T
```

To get the character code for a specific character, simply precede the character with a `?`. This is useful for comparisons.
```ruby
puts 'Hi there.'
puts 'What\'s your name?'

name = gets.chomp
puts "Hi, #{name}."
if name[0] == ?E
  puts 'You are awesome.'
  puts 'I can just tell.'
end
```

You can also grab substrings.
```ruby
prof = 'We tore the universe a new space-hole, alright!'
puts prof[12, 8] # [start, how long?]
puts prof[12..20] # [from 12 to 20]

puts

def is_avi? filename
  filename.downcase[-4..-1] == '.avi' # Negative numbers start from the end.
end

puts is_avi?('DANCEMONKEYBOY.AVI')
puts is_avi?('toilet_paper_fiasco.jpg')
```
```
universe
universe

true
false
```


## 12.7 Classes and the Class Class ##
In Ruby, classes are real objects. You can call methods (like `new`) on classes because they're objects.

```ruby
puts (42.class)
puts ("I'll have mayonnaise on mine!".class)
puts(Time.new.class)
puts(Time.class)
puts(String.class)

puts(Class.class)
```
```
Fixnum
String
Time
Class
Class
Class # gasp!
```

Class is a Class. Classy!