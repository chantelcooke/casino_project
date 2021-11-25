

require_relative "wallet.rb"
require_relative "slot_machine.rb"
require_relative "rockpaperscissors.rb"
require_relative "blackjack.rb"
require_relative "player.rb"

class Casino
    attr_accessor :player
    def initialize
      @player = Player.new
    #   @wallet = Wallet.new(100)
    #   @rps = Rps.new(@wallet)
      @rps = Rps.new(player.wallet)
      @slots = Slot_machine.new
      @black_jack = Blackjack.new(@player)
    end
  
    def user_info
      puts "Welcome! What's your name?"
      @user_name = gets.strip
      @player.name = @user_name
      puts "How much money do you want to add to your initial $100 ?"
      @user_cash = gets.strip.to_i
      @player.wallet.balance += @user_cash
    #   @wallet.add_money(@user_cash)
      # puts "#{@wallet.current_balance}"
    end
  
  
    def menu 
      puts 
      puts "1. Play a Game"
      puts "2. View Wallet"
      puts "3. Never mind, I don't want to play"
  
    
      choice = gets.to_i
      if choice == 1
        play_game
      elsif choice == 2
        puts "  "
        # puts "Here is your current balance #{@wallet.current_balance}"
        puts "Here is your current balance #{@player.wallet.balance}"
        puts " "
      elsif choice == 3
        puts "See ya next time!"
        exit
      else
        puts "That wasn't a choice, choose again."
        menu
      end
    end

    def play_game
        puts 'What game would you like to play?'
        puts '1. Blackjack'
        puts '2. Slots'
        puts '3. Rock Paper Scissors'
        puts '4. Exit'
        choice = gets.strip.to_i
        if choice == 1
          @black_jack.play
        elsif choice == 2
          @slots.spin
        elsif choice == 3
          puts "In choice 3"
          @rps.play
        elsif choice == 4
          puts 'Thanks for coming!'
          exit
        else
          puts 'Error: please try again.'
        end
      end
    
    end