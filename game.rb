
class Game

  attr_accessor :current_game

  def initialize()

    @player_1 = Player.new('player_1')
    @player_2 = Player.new('Player_2')
    @current_player = @player_1
    @game_active = true

  end


  def generate_question
    # add 2 numbers between 1 - 20
    question = Question.new()
    question
  end

  def receive_input
    input = gets.chomp
    input.to_i
  end


  def update_lives()

  end

  def switch_players
    if @current_player != @player_1
      @current_player = @player_1
    else
      @current_player = @player_2
    end
  end

  def check_end_game_condition
    if @player_1.lives == 0 || @player_2.lives == 0
      @game_active = false
    end
  end

    # Write a while loop
    # MAKE SURE TO INCLUDE END CONDTION !!!

    # We are now at the start of the turns
  def start
    while @game_active do

      question = generate_question()

      # CTA for the current player
      puts "#{@current_player.name} here's your question!"
      puts question.question_text

      # ask_current_player_question(question)

      player_answer = receive_input()


      unless player_answer == question.answer
        @current_player.lives -= 1
      end

      switch_players()


      check_end_game_condition()

    end
    puts "Game Over"
  end
    #stops game when players are out of lives
    #if not keep asking questions & alternating players
end




