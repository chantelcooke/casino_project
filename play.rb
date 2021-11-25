require_relative "menu.rb"
require_relative "wallet.rb"
require_relative "slot_machine.rb"


class Game

    def initialize
        @menu = Menu.new("1 Check wallet", "2 Bet money", "3 Add money to walleet", "4 Play slots", "Exit")
        @wallet = Wallet.new(100)
        @slots = Slot_machine.new
    end

    def play
        @slots.spin
    end
end

@game = Game.new

@game.play
