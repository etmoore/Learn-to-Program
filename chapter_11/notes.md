# Chapter 11: Reading and Writing, Saving and Loading, Yin and... Something Else #

## 11.3 Saving and Loading for Grown-Ups ##

An example of saving a simple string to a file and then reading it back out again.
```ruby
# The filename doesn't have to end
# with ".txt", but since it is valid
# text, why not?
filename = 'listerQuote.txt'
text_string = 'I promise that I swear absolutely that ' +
              'I will never mention gazpacho soup again.'

# The 'w' here is for write-access to the file,
# since we are trying to write to it.
File.open filename, 'w' do |f|
    f.write test_string
end

read_string = File.read filename

puts(read_string) == test_string)
```
=> true

`File.open` is how you open a file. The `'w'` gives us write access. 
`File.read` is how you read a file.

In most programming languages, you have to remember to close the file. Ruby takes care of this for you at `end`.

## 11.4 YAML ##
**YAML** is a format for representing objects as strings.  
YAML is nice because it's human-readable and computer-readable.

YAML is not part of the Ruby core, but it is part of the standard distribution. When you install Ruby, you install YAML too.

If you want to use YAML in your program, you have to **import** it into your program like so: `require 'yaml'`

```ruby
require 'yaml'

test_array = ['Give Quiche A Chance',
              'Mutants Out!',
              'Chameleonic Life Forms, No Thanks']

# Here is half the magic:
test_string = test_array.to_yaml
# Kind of like 'to_s', and it is in fact a string,
# but it's a YAML description of "test_array".

filename = 'RimmerTShirts.txt'

File.open filename, 'w' do |f|
    f.write test_string
end

read_string = File.read filename

# And the other half of the magic:
read_array = YAML::load read_string

puts(read_string == test_string)
puts(read_array == test_array)
```

=> true
=> true

## Diversion: Double-Quoted Strings ##
Double quoted strings interpret characters like `\n`. Single quoted strings do not.  
Double quoted strings allow for **interpolation**.

```ruby
name = 'Luke'
zip = 90210

puts "Name = #{name}, Zipcode = #{zip}"
```
=> Name = Luke, Zipcode = 90210

```ruby
puts "#{2 * 10**4 + 1} Leagues Under the Sea, THE REVENGE!"
```
=> 20001 Leagues Under the Sea, THE REVENGE!

## 11.6 Back to Our Regularly Scheduled Programming ##
YAML takes or returns a multiline string.

Example: Creating methods to write and read YAML in one line.
```ruby
require 'yaml'

# First we define these fancy methods    

def yaml_save object, filename
    File.open filename, 'w' do |f|
        f.write(object.to_yaml)
    end
end

def yaml_load filename
    yaml_string = File.read filename

    YAML::load yaml_string
end

# ... and now we use these fancy methods

test_array = ['Slick Shoes',
              'Bully Blinders',
              'Pinchers of Peril']

filename = 'DatasGadges.txt'

# We save it...
yaml_save test_array filename

# We load it...
read_array = yaml_load filename

# We weep for the po' fools that ain't got it...
puts (read_array == test_array)
```
=> true

## 11.7 Renaming Your Photos ##
`Dir[]`
`[]` is a method on the **Dir** object
_arr[2] and arr.[]2 are the same thing. In this case, [] is a an array method._

`Dir[<string describing while filenames you are looking for>]`
returns an array of the filenames (strings) it found.

`Dir['*.jpg']` finds all JPEGs within the current directory.
`Dir['*.{JPG,jpg}']` finds all JPEGs within the current directory (taking case sensitivity into account.
`Dir['../*.{JPG,jpg}']` finds all JPEGs within the parent directory.
`Dir['**/*.{JPG,jpg}']` finds all JPEGs within the current directory and sub directories (recursive search).

`Dir.chdir` changes the current working directory.

`File.rename` renames files

```ruby
# For convenience, go to where pictures are stored on the hard drive.
Dir.chdir 'C:/Documents and Settings/Katy/PictureInbox'

# Find all of the pictures to be moved.
pic_names = Dir['F:/**/*.{JPG,jpg}']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading {pic_names.length} files: "

# This will be our counter. We'll start at 1.
pic_number = 1

picnames.each do |name|
    print '.' # This is our progress bar".

    new_name = if pic_number < 10
        "batch_name0#{pic_number}.jpg"
    else
        "batch_name#{pic_number}.jpg"
    end

    # This renames the files and moves them to the current working
    # directory (which we conveniently moved to earlier)
    File.rename name, new_name

    # Increment the counter
    pic_number = pic_number + 1
end

puts # This is so we aren't on the progress bar line.
puts 'Done, cutie!'
```

