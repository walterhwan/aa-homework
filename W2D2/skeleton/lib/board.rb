class Board
  attr_accessor :cups
  attr_reader :name1, :name2

  NUM_CUPS = 14.freeze

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(NUM_CUPS) { Array.new }
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    cups.each_index do |idx|
      unless [6, 13].include?(idx)
        4.times { cups[idx] << :stone }
      end
    end
    cups.each do |cup|
    end
  end

  def valid_move?(start_pos)
    raise 'Invalid starting cup' unless start_pos.between?(1, 12)
  end

  def make_move(start_pos, current_player_name)
    # take stones
    hand = []
    hand, cups[start_pos] = cups[start_pos], hand

    # distributes stones
    cup_idx = start_pos
    until hand.empty?
      cup_idx += 1
      cup_idx = cup_idx % NUM_CUPS
      if current_player_name == name1 && cup_idx == 13
        next
      elsif current_player_name == name2 && cup_idx == 6
        next
      else
        cups[cup_idx] << hand.pop
      end
    end

    next_turn(cup_idx, current_player_name)
  end

  def next_turn(ending_cup_idx, current_player_name)
    # helper method to determine what #make_move returns
    render
    if current_player_name == name1 && ending_cup_idx == 6
      return :prompt
    elsif current_player_name == name2 && ending_cup_idx == 13
      return :prompt
    elsif cups[ending_cup_idx].length <= 1
      return :switch
    else
      return ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    cups[0..5].flatten.count == 0 || cups[7..12].flatten.count == 0
  end

  def winner
    if cups[6] == cups[13]
      :draw
    elsif cups[6].count > cups[13].count
      name1
    else
      name1
    end
  end
end
