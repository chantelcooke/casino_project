# menu
# wallet - ability to increase or decrease
# rock paper scissors
# slots
# black jack
# create a class for cards
# win or lose

#welcome message - get user input (name, amount of money)

# view_menu
# view wallet
# play a game
    #3 games
# exit


# menu
# wallet
# rock paper scissors
# slots
# black jack
# create a class for cards
# menu navigation
# slots & high / low
# wallet - ability to increase or decrease
# rock paper scissors
# slots
# black jack
# create a class for cards
# win or lose
# Start game player has a name and an initial bankroll
# Player can go to different games via menu
# Slots
# High / Low
# Player places bet and wins / loses (hint: rand)
# Player's bankroll goes up and down with wins and losses


#welcome message - get user input (name, amount of money)


require_relative "wallet.rb"
require_relative "rockpaperscissors.rb"

class Casino

  def initialize
    @wallet = Wallet.new(100)
    @rps = Rps.new(@wallet)
  end

  def user_info
    puts "Welcome! What's your name?"
    @user_name = gets.strip
    puts "How much money do you want to add to your initial $100 ?"
    # @user_cash = gets.strip.to_i
    @wallet.add_money(gets.strip.to_i)
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
      puts "Here is your current balance #{@wallet.current_balance}"
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
      @Blackjack
    elsif choice == 2
      @Slots
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

  

