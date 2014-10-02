require 'yaml'

test_hash = {
  hair_color: 'brown',
  name: 'Evan',
  shoe_size: 13,
  favorite_colors: [
    'red',
    'green',
    'blue'
    ],
  eye_color: 'hazel'
}

# Here is half the magic:
test_string = test_hash.to_yaml
# Kind of like 'to_s', and it is in fact a string,
# but it's a YAML description of "test_hash".

filename = 'yaml_test.txt'

File.open filename, 'w' do |f|
    f.write test_string
end

read_string = File.read filename

# And the other half of the magic:
read_number = YAML::load read_string

puts(read_string == test_string)
puts(read_number == test_hash)