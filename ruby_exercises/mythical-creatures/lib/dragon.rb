class Dragon
    def initialize(name, color, rider, hungry = true, fed = 0)
        @name = name
        @color = color
        @rider = rider
        @hungry = hungry
        @fed = fed
    end

    def name
        @name
    end

    def rider
        @rider
    end

    def color
        @color
    end

    def hungry?
        @hungry
    end

    def eat
        @fed = @fed + 1
        if @fed == 3
            @hungry = false
        end
    end
end