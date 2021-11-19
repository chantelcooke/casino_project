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

require_relative 'player'

def welcome
  puts "Welcome to the Casino, #{Player}!"
end

puts Player

# class App
#   attr_accessor :person

#   def initialize
#     @person = create_person
#   end  

#   def create_person
#     puts "What is your name?"
#     name = gets.strip
#     puts "What is your age?"
#     age = gets.strip.to_i
#     @person = Person.new(name, age)
#     # @person.increase_age(2)
#     # puts @person.age
#   end  

# end  

app = App.new


#welcome message - get user input (name, amount of money)
# def user_info
#   welcome
#   puts "What's your name?"
#   @user_name = gets.strip
#   puts "How much money do you have?"
#   @user_cash = gets.strip.to_i
# end


def menu 
  puts 
  puts "1. View Wallet"
  puts "2. Play a Game"
  puts "3. Blackjack"
  puts "2. Rock Paper Scissors"
 
  choice = gets.to_i
  if choice == 1
    Slots
  elsif choice == 2
    Rps
  elsif choice == 3
    Blackjack
  elsif choice == 4
    puts "Thanks for coming!"
    exit
  else
    puts "That wasn't a choice, choose again."
    menu
  end
end

menu
#welcome message - get user input (name, amount of money)
def user_info
    welcome
    puts "What's your name?"
    @user_name = gets.strip
    puts "How much money do you have?"
    @user_cash = gets.strip.to_i
  end