class Player
  attr_accessor :name, :money

def initialize(name, money)
  @name = name
  @money = money
end

def create_person
  puts "What is your name?"
  name = gets.strip
  puts "How much money do you have?"
  money = gets.strip.to_i
  @player = Player.new(name, money)
  # @person.increase_age(2)
  # puts @person.age
end  

end