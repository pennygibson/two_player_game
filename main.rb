# This will run the game

# 1. Import all the classes
require_relative "question"
require_relative "player"
require_relative "game"



# 2. Create an instance of Game
game = Game.new()

# 3. Start the game loop
game.start()

# 4. When Game Loop finishes, print somehting and exit
puts "Game Over"