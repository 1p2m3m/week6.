class Orangetree
  def initialize
    @year = 0
    @height = 0
    @orange_count = 0
  end

  def pick_an_orange
    if is_alive
      @orange_count -= 1
      puts "You picked one fruit, it was delicious. #{@orange_count} orange(s) left."
    else
      puts "You cannot pick oranges. The tree is dead."
    end
  end

  def count_the_orange
    puts "You have #{@orange_count} fruit on the tree"
  end

  def one_year_passes
    @orange_count = 0
    if @year >= 0 && @year < 6
        @year = @year + 1
    else
      puts "Your tree is dead."
    end

    if @height >= 0 && @height < 48
        @height = @height + 8
        puts "Your tree is growing #{@height}cm"
    else
      puts "The Tree is not growing. It is dead"
    end

    if @year == 3
      @orange_count = @orange_count + 2
      puts "you have #{@orange_count} oranges"
    elsif @year == 4
      @orange_count = @orange_count + 3
      puts "you have #{@orange_count} oranges"
    elsif @year == 5
      @orange_count = @orange_count + 4
      puts "you have #{@orange_count} oranges"
    else
      puts "you have no oranges"
    end
  end

  def is_alive
    if @height < 48
      true
    else
      false
    end
  end

end

tree = Orangetree.new
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.count_the_orange
tree.pick_an_orange
tree.one_year_passes
tree.pick_an_orange
tree.count_the_orange
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.pick_an_orange
