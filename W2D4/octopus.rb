require 'set'

fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']


def sluggish_octopus(all_fishes)
  all_fishes.each do |fish|
    return fish if all_fishes.all? { |fish2| fish.length >= fish2.length }
  end
end

def dominant_octopus(all_fishes)
  
end

def clever_octopus(all_fishes)
  biggest_fish = all_fishes.fist
  all_fishes.each do |fish|
    biggest_fish = fish if biggest_fish.length < fish.length
  end

  biggest_fish
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(dir, tiles_array)
  tiles_array.each_with_index do |tile, idx|
    return idx if dir == tile
  end
end

new_tiles_data_structure = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ] .map.with_index { |el, i| [el, i] }.to_h

def fast_dance(dir, new_tiles_data_structure)
  new_tiles_data_structure[dir]
end
