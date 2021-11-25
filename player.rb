
class Player
  attr_accessor :name, :wallet #might not be necessary
  def initialize
    puts "What is your name?"
    @name = gets.strip
    @name = name
    puts "How much money do you have?" #add
    @wallet = gets.strip.to_i #could also be money
    # @wallet = Wallet.new(@money)
    puts "You have $#{@wallet}."
    # @wallet == @money
  end

  def current_balance
    return @wallet
  end

  def validate_money(money)
    if money < 0 && (@wallet - money) >= 0
      true
    else
      false
    end
  end

  def add_money(money)
    @wallet += money
  end

  def subtract_money(money)
    @wallet -= money
  end

end   
