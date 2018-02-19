class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over
      take_turn
    end

    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    sequence = require_sequence

    # unless sequence == @seq
    #   @game_over = true
    # end

    unless @game_over
      round_success_message('message')
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    puts "The sequence is:"
    @seq.each do |s|
      puts s
    end
    system('clear')
  end

  def require_sequence
    puts "Please enter sequence: "
    # gets.chomp.delete(',.:;!?').split(' ')
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message(message)
    puts "Round Success!"
  end

  def game_over_message
    puts 'Game Over!'
  end

  def reset_game
    initialize
  end
end

# if __FILE__ == $PROGRAM_NAME
#   game = Simon.new
#   game.play
# end
