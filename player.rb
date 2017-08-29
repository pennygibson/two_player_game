class Player

  attr_accessor :name, :lives

  def initialize(name)
    # Attributes / State -> Things we want to keep track of
    @name = name
    @lives = 3
    @incorrect_answers = 0
  end

  # These are methods that implement the behaviour of the Player
  def answer_question(question)
    # TODO: Finish me
  end

end