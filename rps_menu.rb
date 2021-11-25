class Menu
    @menu_items = []

    def initialize(m1, m2, m3 , m4, m5)

        @menu_items = Array.new
        @menu_items << m1
        @menu_items << m2
        @menu_items << m3
        @menu_items << m4
        @menu_items << m5
        
    end

    def display
        for item in @menu_items
            puts item
        end
    
    end
end



