
require_relative "menu.rb"
#daniel williams worked on the rock paper scissors files


class Rps

    def initialize(w)
        @Rock = 1
        @Paper = 2
        @Scissors = 3
        @option = 0
        @computer_choice = 0
        @player_choice = 0
        @wallet = w
        # puts "in rps initialize wallet #{@wallet.current_balance}"
    end

   


    
    def menu
        @game_menu = Menu.new("1. Rock", "2. Paper", "3. Scissors", "4. Exit", "5. View wallet")
        @game_menu.display
        @player_choice = gets.to_i
    end



    
    def result
        @computer_choice = rand (1..3) 
        # puts "computer choice is #{@computer_choice}"
        
        if (@player_choice != 4 && @player_choice != 5)
            print "computer choice is "
        
            case
            when @computer_choice == 1
                puts "Rock"
            when @computer_choice == 2
                puts "Paper"
            when @computer_choice == 3
                puts "Scissors"
            end
        end

        if (@player_choice == 5)
          puts "Your current balance is #{@wallet.check_balance} dollars"
        elsif (@computer_choice == @Rock && @player_choice == @Rock)
        # puts "case one"  
        puts "Round is a draw"
            play
        elsif (@computer_choice == @Rock && @player_choice == @Paper)
        # puts "case two"
        puts "Player wins"
        @wallet.add_money(10)
        puts "You won 10 bucks"
        play
        elsif (@computer_choice == @Rock && @player_choice == @Scissors)
        # puts "case three"
        puts "Computer wins"
        @wallet.take_money(2)
        puts "You lost 2 dollars"
        play
        elsif (@computer_choice == @Paper && @player_choice == @Rock)
        # puts "case four"  
        puts "computer wins"
        @wallet.take_money(2)
        puts "You lost 2 dollars"
            play
        elsif (@computer_choice == @Paper && @player_choice == @Paper)
        # puts "case five"
        puts "draw"
        play
        elsif (@computer_choice == @Paper && @player_choice == @Scissors)
        # puts "case six"
        puts "player wins"
        @wallet.add_money(10)
        puts "You won 10 bucks"
        play 
        elsif (@computer_choice == @Scissors && @player_choice == @Rock)
        # puts "case seven"  
        puts "player wins"
        @wallet.add_money(10)
        puts "You won 10 bucks"
            play
        elsif (@computer_choice == @Scissors && @player_choice == @Paper)
        # puts "case eight"
        puts "computer wins"
        @wallet.take_money(2)
        puts "You lost 2 dollars"
        play
        elsif (@computer_choice == @Scissors && @player_choice == @Scissors)
        # puts "case nine"
        puts "draw"
        play
        else 
        end
    end

    def view_wallet
        @wallet.check_balance
    end



    def play
      while (@player_choice != 4)
          menu
          result
    end
    if @player_choice == 4
        exit
    end
    end


end