Chapter 8: Arrays and Iterators
=================

An **array** is just a list.
Every slot in the list acts like a variable.

**nil** is Ruby's way of saying "nothing". It means "not any other object." If you leave out a slot when assigning to an array, the empty slot will be filled with `nil` by default.

8.1 The Method `each`
-------------
```
languages = ['English', 'Norwegian', 'Ruby']languages.each do |lang|	puts 'I love ' + lang + '!' puts 'Don\'t 	you?'endputs 'And let\'s hear it for Java!' puts '<crickets chirp in the distance>'
```
outputs:
```
I love English!Don't you?I love Norwegian!Don't you?I love Ruby!Don't you?And let's hear it for Java! <crickets chirp in the distance>
```

**`do`** and **`end`** specify a block of code.

The vertical bars (`|lang|`) just let `each` know which variable to use to feed in the objects in the array. 

NOTE: `each` is an array method. `while`, `if`, `do`, `else` and `end` are not methods - they're a fundamental part of the Ruby language.

`each` is a type of method called an **iterator**.  Iterators are always followed by a **block**, some code wrapped inside **`do...end`**.

`.times` is an integer method.
```
3.times do
	puts 'Hip-Hip-Hooray!'
end
```
outputs:
```
Hip-Hip-Hooray! 
Hip-Hip-Hooray! 
Hip-Hip-Hooray!
```

8.2 More Array Methods
----------------

`.join` adds a string between array objects and concatenates them together.

`.push` adds an object to the end of an array.

`.pop` removes the last object from an array.

**push and pop change the array!**

