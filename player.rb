class Player
  attr_reader :lives, :name

  @@number_of_players = 0

  def initialize(name)
    @@number_of_players += 1
    @player_num = @@number_of_players
    @lives = 3
    @name = name
  end

  def lost_life
    @lives -= 1
    if @lives > 1
      p "#{@name} was wrong. They now have #{@lives} lives left. "
    elsif @lives === 1
      p "#{@name} was wrong. They have #{@lives} life left."
    end
  end
end