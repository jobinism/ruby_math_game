class Question

  attr_reader :string, :answer
  
  def initialize
    @number_1 = rand(2..100)
    @number_2 = rand(2..100)
    @string = "What is #{@number_1} + #{@number_2}?"
    @answer = @number_1 + @number_2
  end


end
