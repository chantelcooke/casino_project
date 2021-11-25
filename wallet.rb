class Wallet

    attr_accessor :balance

    def initialize(a)
        @balance = a
    end

    # def create_wallet(amount)

    #     @balance = amount

    # end

    def check_balance

        print "#{@balance}"
    end

    def take_money(amount)
        @balance -= amount    
        # check_balance
    end

    def add_money(amount)
        @balance += amount
        # check_balance
    end

end