require_relative "game.rb"


class Blackjack
    def initialize(player)
      @player = player
      @blackjack = Game.new
    #   play
    end 
    
    
    def play 
      @blackjack.dealing_cards
      puts "Let's play! There is a $5 betting minimum, how much money are you betting?"
      bet = gets.strip.to_i
      if bet > 4
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
        play
      else 
        puts "Insufficient amount, must be $5 or more." 
        play
      end  
    end  
  end