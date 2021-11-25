require_relative "wallet.rb"


class Player
    attr_accessor :name, :wallet
    def initialize
        @wallet = Wallet.new(100)
    #   puts "What is your name?"
    #   @name = gets.strip
    #   @money = 100.0
    end
end    
    
  