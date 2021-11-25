require_relative "rockpaperscissors.rb"
require_relative "casino.rb"



def game
    # @play = Rps.new
    # @play.play

    @casino = Casino.new()

    @casino.user_info
    @casino.menu
    
    @casino.play_game
    @rockpaperscissors.view_wallet




end

game