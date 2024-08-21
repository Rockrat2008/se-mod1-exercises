class Unicorn
    attr_reader :name,
                :color

    def initialize(name, color = "silver")
        @name = name
        @color = color
    end

    def silver?
        return color == "silver"
        false
    end

    def say (unicorn_message)
        "**;* #{unicorn_message} **;*"
    end
end