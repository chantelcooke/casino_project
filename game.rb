require_relative "deck.rb"


class Game
    attr_accessor :player_hand, :dealer_hand
  
    def initialize
      @deck = Deck.new
      @player_hand = []
      @dealer_hand = []
      
    end
  
  
  
    def show_hand(hand)
      hand.each do |card|
        puts "  #{card.name} of #{card.suit}"
      end
    end
  
    def preview_dealer_hand(hand)
      puts "Dealer's hand:"
      puts "  XX"
      hand[1..-1].each do |card|
        puts "  #{card.name} of #{card.suit}"
      end
    end
  
  
    def dealing_cards
      i = 1
  
      while i < 5
        if i % 2 == 1
          @player_hand << @deck.cards.shift
        elsif i % 2 == 0
          @dealer_hand << @deck.cards.shift
        end
        i = i + 1
      end
    end
  
  
    def total(hand)
      hand.map{|card| card.value }.reduce(:+)
    end
  
  
    def dealer_hit(hand)
      while total(hand) <= 16
        @dealer_hand << @deck.cards.shift
      end
    end
  
  
    def players_hit(hand)
      player_hand_is_playing = true
  
      while player_hand_is_playing
  
        if total(hand) == 21
          player_hand_is_playing = false
          puts "You win! BLACKJACK!"
          break
        elsif total(hand) > 21
          player_hand_is_playing = false
          puts "Bust!"
          
        end
  
        puts "Would you like to 'hit' or 'stay'?"
        answer = gets.chomp.downcase
        if answer == "hit"
          @player_hand << @deck.cards.shift
          show_hand(hand)
          puts total(hand)
        elsif answer == "stay"
          player_hand_is_playing = false
          puts total(hand)
        end
      end
    end
  
  
    def results
      if dealer_bust = (total(dealer_hand) > 21)
        puts 'You Win! dealer BUST'
        # bet *= -1 if !dealer_bust
        # @player.money += bet
        # puts "You now have $#{@player.money} in your wallet"
      elsif dealer_lose = ( total(player_hand) > total(dealer_hand) ) && (total(player_hand) <= 21)
        puts "You win! Dealer loses."
        # bet *= -1 if !dealer_lose
        # @player.money += bet
        # puts "You now have $#{@player.money} in your wallet"
      elsif dealer_win = ( total(dealer_hand) > total(player_hand) ) && (total(dealer_hand) <= 21)
        puts "You lose! Dealer wins."
        # bet *= -1 if !dealer_win
        # @player.money += bet
        # puts "You now have $#{@player.money} in your wallet"
      elsif tie = (total(dealer_hand) == total(player_hand))
        puts "Tie :("
      end
    end
  
  end