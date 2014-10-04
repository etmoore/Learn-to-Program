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



