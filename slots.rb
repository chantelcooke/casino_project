
#slot choices - fruit, wild, scatter, multiplier, sticky, bonus, stacked
#betting money then increases the payout, for $1 in, raises by $0.25
#if you get 3 in a row, you win
#wild - substitute for a winning symbol
#multiplier - multiplies the payout
#scatter - offers a payout whenever they appear
#bonus - you get a bonus game
#standard - regular symbols - 7, cherries, barbarbar

# #will need to use the random code - rand(10); found out that .sample works for a mixture of integers and strings

require_relative 'player.rb'




class Slots
  def initialize(player) #supposedly calls the player
    @player = player
    welcome
  end

  def welcome #welcome message to validate if the player has enough cash to play.
    p "Welcome to the game of Slots, #{@player.name}! It's $3 to play. You have $#{@player.wallet}"
      # @wallet = Wallet.new
      # @wallet.validate_money(@money)
      if @player.wallet >= 3
       play_slots
      elsif #@wallet < 3
        puts "Sorry, you don't have enough money to play."
        Casino
      else
      end
    # @player.wallet.subtract_money(3)
    # puts "#{@player.wallet}"
  end

  def play_slots #pulling the level
    puts "To play, pull the level by typing 'pull'"
    answer = gets.strip.downcase
    if answer == "pull"
      pull
    else
      puts "Please try again"
      welcome
    end
  end


    def roller_options #what options there are in the slot
      roller_options = ['Cherry', 'Wild', 'Bonus', 1, 2, 3, 4, 5, 6]
 
    end
  
    def pull #getting the random output of the slot
      p 'time to pull...'
      @result1 = roller_options.sample(1)
      @result2 = roller_options.sample(1)
      @result3 = roller_options.sample(1)
      puts "Your result is #{@result1}, #{@result2}, #{@result3}.\n"
      results
    end

  def results #defines how to win if you get 3 in a row, a bonus, wild, or cherries
    if (@result1 == @result2) && (@result2 == @result3)
      win
    elsif @result1 == ["Bonus"] || @result2 == ["Bonus"] || @result3 == ["Bonus"]
      puts "You get to roll again!" 
     roll_again
    elsif ((@result1 == ["Wild"]) && (@result2 == @result3)) || ((@result2 == ["Wild"]) && (@result1 == @result3)) || ((@result3 == ["Wild"]) && (@result2 == @result1)) || (@result1 == ["Wild"] && @result2 == ["Wild"]) || (@result3 == ["Wild"] && @result2 == ["Wild"]) || (@result1 == ["Wild"] && @result3 == ["Wild"])
      win
    elsif @result1 == ["Cherry"] && @result2 == ["Cherry"] && @result3 == ["Cherry"]
      puts win
    elsif (@result1 != @result2) || (@result2 != @result3)
      @player.subtract_money(3)
      puts "#{@player.wallet}"
      puts "Sorry, you didn't win. Want to play again? y/n"
      answer = gets.strip.downcase.to_s
      if answer == "y"
        play_again
      else 
        puts "Thanks for coming!"
        puts "You have $#{@player.wallet} left to play. Enjoy the Casino!"
        @casino.menu
      end
    end
  end

  def win #winning a round
    puts "You win! You receive $5!"
    @player.add_money(5)
    puts "Your wallet is now $#{@player.wallet}"
    puts "Want to play again? y/n"
    play_choice = gets.strip
    if play_choice == 'y'
      play_slots
    else
      puts "Thanks for playing Slots, see you next time!"
      Casino
    end
  end

  def roll_again #if you get a bonus, it comes here
      play_slots
  end

  def play_again #if you want to play again, you need to be charged for it
    if @player.wallet >= 3
      play_slots
     elsif @player.wallet < 3
       puts "Sorry, you don't have enough money to play."
       @menu
     else
     end
   @player.subtract_money(3)
 end
end

# player1 = Player.new
# Slots.new(player1)



#unsure how to keep the @player_money consistent, it doesn't seem to change when money is 
#taken or added at different method points
