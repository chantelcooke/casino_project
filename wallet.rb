


class Wallet
#   attr_accessor :money
    
  def initialize(money)
    @wallet = money
  end

  def current_balance
    return @wallet
  end

  def validate_money(money)
    if money > 0 && (@wallet - money) >= 0
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