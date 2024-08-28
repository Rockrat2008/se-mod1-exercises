class Hobbit
    def initialize(name, disposition = "homebody", age = 0, adult = false)
        @name = name
        @disposition = disposition
        @age = age
        @adult = adult
    end

    def name
        @name
    end

    def disposition
        @disposition
    end

    def age
        @age
    end

    def celebrate_birthday
        @age += 1
    end

    def adult?
        if @age > 32
            @adult = true
        else
            @adult = false
        end
    end

    def old?
        if @age > 100
            @old = true
        else
            @old = false
        end
    end

    def has_ring?
        if @name == "Frodo"
            true
        else
            false
        end
    end

    def is_short?
        true
    end
end