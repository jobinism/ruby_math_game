require './question'

class Turn

  def initialize(player)
    @player = player
    @question = Question.new
  end

  def ask_question 
    puts "#{@player.name}: #{@question.string}"
    print "> "
    result = validate($stdin.gets.chomp)
  end

  def validate(answer)
    if answer.to_i != @question.answer
      @player.lost_life
      return "Sorry #{@player.name}, wrong answer!"
    end
    return "You got it #{@player.name}!"
  end

end

