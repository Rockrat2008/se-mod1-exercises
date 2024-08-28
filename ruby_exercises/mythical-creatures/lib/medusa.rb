class Medusa

    def initialize(name)
        @name = name
        @statues = []
    end

    def name
        @name
    end

    def statues
        @statues
    end

    def stare(victim)
        @statues << victim
    end
end

class Person

    def initialize(victim)
        @victim = victim
    end

    def name
        @victim
    end
end