# class Card 

#   attr_accessor :rank, :suit, :color
 
#   def initialize(rank, suit, color)
#     @rank = rank
#     @suit = suit 
#     @color = color 
#   end

#   def to_i
#     case @rank
#     when 'A'
#       return 11
#     when 'J'
#       return 10
#     when 'Q'
#       return 10
#     when 'K'
#       return 10
#     else
#       @rank.to_i          
#     end
#   end   
  
#   def to_s
#     return "#{@rank} #{@suit} (#{@color})"
#   end  
# end    


class Card
    attr_accessor :name, :suit, :value
  
    def initialize(suit, value)
      @suit = suit
      @name = value
  
      if (value == "J") || (value == "Q") || (value == "K")
        @value = 10
      elsif value == "A"
        @value = 11
      else
        @value = value
      end
  
    end
  end