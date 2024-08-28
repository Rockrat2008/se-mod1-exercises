class Wizard
    attr_accessor :name,
                  :bearded

    def initialize(name, bearded: true)
        @name = name
        @bearded = bearded
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
end