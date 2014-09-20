title = 'Table of Contents'
chapters = [['Getting Started', 1],
            ['Numbers',         9],
            ['Letters',         13]]

puts title.center(50)
puts

chapter_number = 1

chapters.each do |chapter|
  name = chapter[0]
  page = chapter[1]

  start = 'Chapter ' + chapter_number.to_s + ': ' + name
  ending = 'page ' + page.to_s

  puts start.ljust(30) + ending.rjust(20)
  chapter_number += 1
end