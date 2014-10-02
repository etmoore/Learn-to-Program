
def picture_download fetch_path, save_path
    Dir.chdir save_path

    # Find all of the pictures to be moved.
    pic_names = Dir[fetch_path + '/*.{JPG,jpg}']

    puts 'What would you like to call this batch?'
    batch_name = gets.chomp

    puts
    print "Downloading #{pic_names.length} files: "

    # This will be our counter. We'll start at 1.
    pic_number = 1

    pic_names.each do |name|
        print '.' # This is our progress bar".

        new_name = if pic_number < 10
            "#{batch_name}0#{pic_number}.jpg"
        else
            "#{batch_name}#{pic_number}.jpg"
        end

        # This renames the files and moves them to the current working
        # directory (which we conveniently moved to earlier)
        unless File.exist?(new_name)
            File.rename name, new_name
        end

        # Increment the counter
        pic_number = pic_number + 1
    end
end

# puts "Where would you like to save the pictures? (copy/paste path)"
# save_path = gets.chomp
# puts "Where would you like to save the pictures to? (copy/paste path)"
# fetch_path = gets.chomp

messy_pictures = '/Users/evan/Learn_to_Program/chapter_11/messy_pictures'
organized_pictures = '/Users/evan/Learn_to_Program/chapter_11/organized_pictures'
picture_download messy_pictures, organized_pictures