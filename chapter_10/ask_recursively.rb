# example from page 83
# if the user tries to dodge the question, the program will keep
# asking until they answer.

def ask_recursively question
  puts question
  reply = gets.chomp.downcase

  if reply == 'yes'
    true
  elsif reply == 'no'
    false
  else
    puts 'Please answer "yes" or "no".'
    ask_recursively question # this is the magic line.
  end
end

ask_recursively 'Do you wet the bed?'