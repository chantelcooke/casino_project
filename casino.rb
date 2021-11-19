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
def user_info
  puts "Welcome! What's your name?"
  @user_name = gets.strip
  puts "How much money do you have?"
  @user_cash = gets.strip.to_i
end


def menu 
  puts 
  puts "1. Play a Game"
  puts "2. View Wallet"
  puts "3. Never mind, I don't want to play"

 
  choice = gets.to_i
  if choice == 1
    Play_Game
  elsif choice == 2
    Wallet
  elsif choice == 3
    puts "See ya next time!"
    exit
  else
    puts "That wasn't a choice, choose again."
    menu
  end
end

user_info
menu