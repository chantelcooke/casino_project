require_relative "rps_menu.rb"




class Rps

    def initialize
        @Rock = 1
        @Paper = 2
        @Scissors = 3
        @option = 0
        @computer_choice = 0
        @player_choice = 0
    end

   


    
    def menu
        @game_menu = Menu.new("1. Rock", "2. Paper", "3. Scissors", "4. Exit")

        @game_menu.display
        @player_choice = gets.to_i
    end



    
    def result
        @computer_choice = rand (1..3) 
        # puts "computer choice is #{@computer_choice}"
        
        if (@player_choice != 4)
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

        if (@computer_choice == @Rock && @player_choice == @Rock)
        # puts "case one"  
        puts "Round is a draw"
            play
        elsif (@computer_choice == @Rock && @player_choice == @Paper)
        # puts "case two"
        puts "Player wins"
        play
        elsif (@computer_choice == @Rock && @player_choice == @Scissors)
        # puts "case three"
        puts "Computer wins"
        play
        elsif (@computer_choice == @Paper && @player_choice == @Rock)
        # puts "case four"  
        puts "computer wins"
            play
        elsif (@computer_choice == @Paper && @player_choice == @Paper)
        # puts "case five"
        puts "draw"
        play
        elsif (@computer_choice == @Paper && @player_choice == @Scissors)
        # puts "case six"
        puts "player wins"
        play 
        elsif (@computer_choice == @Scissors && @player_choice == @Rock)
        # puts "case seven"  
        puts "player wins"
            play
        elsif (@computer_choice == @Scissors && @player_choice == @Paper)
        # puts "case eight"
        puts "computer wins"
        play
        elsif (@computer_choice == @Scissors && @player_choice == @Scissors)
        # puts "case nine"
        puts "draw"
        play
        else 
        end
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