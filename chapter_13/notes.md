# Chapter 13: Creating New Classes, Changing Existing Ones #

How to add a to_eng (to english) method to the `Integer` class.
```ruby
class Integer
  def to_eng
    if self == 5
      english = 'five'
    else
      english = 'forty-two'
    end

    english
  end
end

puts 5.to_eng
puts 42.to_eng
```
output:
```
five
forty-two
```

**`self`** refers to the object that uses the method.

Now every integer has this method! We jumped into the Integer class, defined a new method, and then jumped back out.

Note: It's best to leave old methods alone and make new ones when you want to do something new. Don't change the Ruby core if you can avoid it.

## 13.2 Creating Classes ##
```ruby
class Die
  def roll
    1 + rand(6)
  end
end

# Make a couple of dice...
dice = [Die.new, Die.new]

# ... and roll them.
dice.each do |die|
  puts die.roll
end
```

If you want to hang on to the value of the die, you need an **instance variable**.

## 13.3 Instance Variables ##
An **instance** of a class is just an object of that class.
**instance variables** are just an object's variables.

instance variables have a `@` in front of their names.

### Local variables vs. Instance Varibles ###

A method's local variables last until the method is finished. An object's instance variables last as long as the object does.

Die improved
```ruby
class Die
  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end
end

die = Die.new
die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing
```
... but what if you want to see what a die is showing as soon as it's created?
```ruby
puts Die.new.showing
```
`nil` ... hmmm... doesn't really make sense for a die to have nothing on it. Let's set some defaults with the `initialize` method.
**`initialize`** gets called as soon as an object is instantiated.

```ruby
class Die
  def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end
end

puts Die.new.showing
```
=> 4   (or some other random number)





