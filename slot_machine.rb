require_relative "wallet.rb" 
 
 
 class Slot_machine

    
    def initialize()
        @reel1 = 0
        @reel2 = 0
        @reel3 = 0
        @wallet = Wallet.new(100)
    end

    def spin
        puts " "
        puts " "
        puts "Type Enter to spin the slot machine or 4 to exit, 3 to check wallet"
        @choice = gets.to_i
        if (@choice == 3)
            puts "  "
            puts "#{@wallet.check_balance}   dollars"
            puts "  "
            spin
        elsif (@choice != 4)
            @reel1 = rand(10-100) % 10
            @reel2 = rand(10-100) % 10
            @reel3 = rand(10-100) % 10

            if(@reel1==@reel2 && @reel2==@reel3)
                puts "  "
                puts "         Slot Machine Spin"
                puts "    "
                print "             #{@reel1}  #{@reel2}"         
                puts "  #{@reel3}"
                puts" win $30"
                puts " "
                @wallet.add_money(30)
                spin
            elsif(@reel1==@reel2 || @reel2==@reel3 || @reel1==@reel3)
                puts "  "
                puts "         Slot Machine Spin"
                puts "    "
                print "             #{@reel1}  #{@reel2}"         
                puts "  #{@reel3}"
        
                puts " win $1"
                puts " "
                @wallet.add_money(1)
                spin
            else
                puts " "
                puts "         Slot Machine Spin"
                puts "    "
                print "             #{@reel1}  #{@reel2}"         
                puts "  #{@reel3}"
                puts " lose $1 "
                puts "  "    
                @wallet.take_money(1)
                spin
            end  
        elsif (@choice == 4) 
            exit
        else 
        end
    end 
end