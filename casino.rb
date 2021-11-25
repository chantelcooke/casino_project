
require_relative 'player.rb'
require_relative 'blackjack.rb'
require_relative 'slots.rb'
require_relative 'rockpaperscissors.rb'



class Casino
  def initialize
    @player = Player.new
    menu
  end  

  def play_game
    begin
      puts "What would you like to do?"
      puts "1. Blackjack"
      puts "2. Slots"
      puts "3. Rock, Paper, Scissors"
      puts "4. View Wallet"
      puts "5. Never mind, I don't want to play"
      response = gets.strip.to_i
      raise "Bad input, try again" unless response > 0 && response < 6
      case response
      when 1
        Blackjack.new(@player)
      when 2
        Slots.new(@player)
      when 3
        Rps.new(@player)
      when 4
        puts "You have $#{@player.wallet}"  
      when 5
        puts "Have a nice day!"
        exit
      else
        raise  
      end
    rescue StandardError => e
      puts e
      retry
    end
  end


  def menu 
    begin
      puts "Welcome! Please make a selection."
      puts "1. Play a Game"
      puts "2. View Wallet"
      puts "3. Exit"
      response = gets.strip.to_i
      raise "Bad input, try again" unless response > 0 && response < 4
      case response
      when 1  
        play_game
      when 2
        puts "You have $#{@player.wallet}"  
      when 3
          puts "See ya next time!"
          exit
      else
        raise
      end      
    rescue StandardError => e
      puts e
      retry
    end
  end
end


Casino.new
