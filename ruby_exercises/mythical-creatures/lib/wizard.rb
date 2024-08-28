class Wizard
    attr_accessor :name,
                  :bearded

    def initialize(name, rested = true, bearded: true)
        @name = name
        @bearded = bearded
        @rested = rested
        @rest_count = 0
    end

    def name
        @name
    end

    def bearded?
        @bearded
    end

    def incantation(incantation)
        incantation = "sudo #{incantation}"
    end

    def rested?
        @rested
    end

    def cast
        @rest_count += 1
        if @rest_count < 3
            "MAGIC MISSLE"
        else
            @rested = false
        end
    end
end