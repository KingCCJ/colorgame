class ColorGame
  
  def initialize
    @color_options = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple", "Pink", "White", "Brown", "Black", "Grey"]
  end

  def get_name
    name = []
    puts 'Hello there, what\'s your name?'
    name = gets.chomp

    puts ''

    puts 'Pleased to meet you, ' + name 
  end

  def get_color

    puts 'Tell me. What\'s your favorite color from the list?'
    puts ''
    puts @color_options
    puts ''

    fav = gets.chomp

    if @color_options.index(fav)
      best_color = find_best_color(fav)
      puts "That\'s a cool color...... But #{best_color} is so much better."
    else
      puts ''
      puts 'Look, you better pick something from my list. -_- I need my list!'
      puts 'So don\'t break it.'
    end
  end

  def find_best_color(fav)
    if @color_options.index(fav) == @color_options.index(@color_options.last)
      @color_options[0]
    else
      @color_options[@color_options.index(fav) + 1]
    end
  end
end

