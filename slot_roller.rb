require_relative 'slots.rb'


class Slot_Roller
  attr_accessor :result1, :result2, :result3

  def roller_options
    roller_options = %w[Cherry Wild Bonus 1 2 3 4 5 6]
  end

  def initialize#(roller1, roller2, roller3)
    @result1 = roller_options.sample(1)
    @result2 = roller_options.sample(1)
    @result3 = roller_options.sample(1)
  #   @roller1 = roller1 #= ['Cherry', 'Wild', 'Bonus', 1, 2, 3, 4, 5, 6]
  #   @roller2 = roller2 #= ['Cherry', 'Wild', 'Bonus', 1, 2, 3, 4, 5, 6]
  #   @roller3 = roller3 #= ['Cherry', 'Wild', 'Bonus', 1, 2, 3, 4, 5, 6]
  end

 


  def pull
    p 'time to pull...'
    @result1 = roller_options.sample(1)
    @result2 = roller_options.sample(1)
    @result3 = roller_options.sample(1)
    puts "Your result is #{@result1}, #{@result2}, #{@result3}.\n"
    s = Slots.new(@result)
    s.results
  end

  # def results
  #   if @result1 == @result2 && @result2 == @result3
  #     slots = Slots.new
  #     slots.win
  #   elsif @result1 == 'Wild' && @result2 == @result3 || @result2 == 'Wild' && @result1 == @result3 || @result3 == 'Wild' && @result2 == @result1
  #     slots = Slots.new
  #     slots.win
  #   elsif @result1 == 'Bonus' || @result2 == 'Bonus' || @result3 == 'Bonus'
  #     s = Slots.new()
  #     s.roll_again
  #   elsif @result1 == 'Cherry' && @result2 == 'Cherry' && @result3 == 'Cherry'
  #     slots = Slots.new
  #     slots.win
  #   elsif (@result1 != @result2) || (@result2 != @result3)
  #     puts "Sorry, you didn't win. Want to play again? y/n"
  #     play_again = gets.strip.downcase.to_s
  #     if play_again == "y"
  #       s = Slots.new
  #       s.play_again
  #     else 
  #       puts "Thanks for coming!"
  #       @Casino
  #     end
  #   end
  # end
end

# Slot_Roller.new 
# s = Slot_Roller.new(@roller1, @roller2, @roller3)
# p s.pull require

   

  # def initialize(roller1, roller2, roller3)
  #   @roller1 = roller1
  #   @roller2 = roller2
  #   @roller3 = roller3
  # end

  # def roller_options
  #   roller_options = ['Cherry', 'Wild', 'Bonus', 1, 2, 3, 4, 5, 6]
  # end
#   def to_i
#     case @roller1
#     when 'Cherry'
#       return 10
#     when 'Wild'
#       if @roller2 == @roller3
#         win
#       else
#         lose
#       end
#     when 'Bonus'
#       roll_again
#     end
#   end
# end











# @roller1 = Slot_Roller.new
# @roller1.sample
# @roller2 = Slot_Roller.new
# @roller2.sample
# @roller3 = Slot_Roller.new
# @roller3.sample

  # def Cherry
  #   case @roller1
  #   when 'Cherry'
  #     return 10
  #   when 'Bonus'
  #     return puts "You get to pull again!"
  #     @Slots.pull
  #   when 'Wild'
  #     if @roller2 == @roller3
  #       win 
  #   else
  #     @pull1.to_i
  #   end
  #   case @pull2
  #   when 'Cherry'
  #     return 10
  #   when 'Bonus'
  #     return 12
  #   when 'Wild'
  #     return 13
  #   else
  #     @pull2.to_i
  #   end
  #   case @pull3
  #   when 'Cherry'
  #     return 10
  #   when 'Bonus'
  #     return 12
  #   when 'Wild'
  #     return 13
  #   else
  #     @pull3.to_i
  #   end
  # end