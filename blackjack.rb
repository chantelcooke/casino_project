require_relative "game.rb"


class Blackjack
    def initialize(player)
      @player = player
      @blackjack = Game.new
      play
    end 
    
    
    def play 
      @blackjack.dealing_cards
      puts "Welcome to the game of Blackjack, #{@player.name}! It's $5 to play. You have $#{@player.wallet}"
    
      if @player.wallet > 4
        puts "Player's hand: "
        @blackjack.show_hand(@blackjack.player_hand)
        puts
        puts "Player's Total: #{@blackjack.total(@blackjack.player_hand)}"
        puts
        @blackjack.preview_dealer_hand(@blackjack.dealer_hand)
        puts
        @blackjack.players_hit(@blackjack.player_hand)
        puts
        puts "Player's hand: #{@blackjack.total(@blackjack.player_hand)}"
        puts
        @blackjack.show_hand(@blackjack.player_hand)
        @blackjack.dealer_hit(@blackjack.dealer_hand)
        puts
        puts "Dealer's hand: #{@blackjack.total(@blackjack.dealer_hand)}"
        @blackjack.show_hand(@blackjack.dealer_hand)
        @blackjack.results 
        @casino.menu
      else 
        puts "Insufficient amount, must be $5 or more. Try again? y/n" 
        try_again = gets.strip
        if try_again == 'y'
          play
        else
          puts "Have a good day!"  
          @casino.menu
        end  
      end  
    end  
  end