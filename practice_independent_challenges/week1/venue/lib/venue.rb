class Venue
    def initialize(name, capacity)
        @name = name
        @capacity = capacity
        @patrons = []
    end

    def name
        @name
    end

    def capacity
        @capacity
    end

    def patrons
        @patrons
    end

    def add_patron(patron_name)
        @patrons << patron_name
    end

    def yell_at_patrons
        @patrons.map { |patron| patron.upcase}
    end
end
