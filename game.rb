require './player'
require './turn'

class Game 

  def initialize(name_1, name_2)
    @turn_number = 0
    @player_1 = Player.new(name_1)
    @player_2 = Player.new(name_2)
  end

  def player_order
    @turn_number += 1
    if @turn_number % 2 === 0
      return [@player_1, @player_2]
    end
    return [@player_1, @player_2]
  end

  def new_turn
    turn(player_order)
  end

  def turn(players)
    turn = Turn.new(players[0])
    p turn.ask_question

    if players[0].lives === 0
      return p "Game over #{players[0].name}, you lose! Congratulations to #{players[1].name}, you finished with #{players[1].lives} lives remaining!"
    end

    new_turn
  end


end