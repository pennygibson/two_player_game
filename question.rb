class Question

  attr_reader :question, :answer, :question_text

  def initialize
  #Things I want to keep track of
    # @question = ques
    @num_1 = 1 + rand(20)
    @num_2 = 1 + rand(20)
    @answer = @num_1 + @num_2
    @question_text = "What is #{@num_2} + #{@num_1}"

  end

end

