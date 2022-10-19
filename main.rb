require 'pp'
require './game'

puts "Please enter Player 1's name:"
print "> "
name_1 = $stdin.gets.chomp

puts "Please enter Player 2's name:"
print "> "
name_2 = $stdin.gets.chomp

game = Game.new(name_1, name_2)

game.new_turn