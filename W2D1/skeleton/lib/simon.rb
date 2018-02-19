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

    # if sequence 

    unless @game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    puts "The sequence is: #{@seq}"
    add_random_color
  end

  def require_sequence
    puts "Please enter sequence: "
    gets.delete('').split(',')
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "Round Success!"
  end

  def game_over_message
    puts 'Game Over!'
  end

  def reset_game
    initialize
  end
end
