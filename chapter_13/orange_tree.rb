class OrangeTree
  def initialize
    @tree_height = 1
    @orange_count = 0
    @tree_age = 0
    @life_span = 11 + rand(30)
  end

  def height
    @tree_height
  end

  def one_year_passes
    drop_crop
    age_one_year
    grow if juvenile?
    produce_fruit if fertile?
    die if end_of_life?
  end

  def count_the_oranges
    if @orange_count == 1
      puts "You see #{@orange_count} orange."
    else
      puts "You see #{@orange_count} oranges."
    end
    @orange_count
  end

  def pick_an_orange
    if @orange_count >= 1
      @orange_count -= 1
      puts "You pick an orange... Mmmm. Juicy."
    else
      puts "Sorry. There are no more oranges this year"
    end
  end

  private

  def juvenile?
    @tree_age <= 7
  end

  def fertile?
    @tree_age >= 3 && @tree_age <= @life_span - 4
  end

  def age_one_year
    @tree_age += 1
  end

  def grow
    @tree_height += 1 + rand(10)
    puts "Wow! The tree is now #{@tree_height} feet tall."
  end

  def drop_crop
    @orange_count = 0
  end

  def produce_fruit
    @orange_count = @tree_age ** 3
    puts "Holy moley! There are now #{@orange_count} oranges!"
  end

  def end_of_life?
    @tree_age >= @life_span
  end

  def die
    puts "Sadly, after giving you everything you ever wanted, the tree has died."
    exit
  end
end

tree = OrangeTree.new
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes