class Pirate
    def initialize(name, job = "Scallywag", cursed = false, booty = 0)
        @name = name
        @job = job
        @cursed = cursed
        @act_counter = 0
        @booty = booty
    end

    def name
        @name
    end

    def job
        @job
    end

    def cursed?
        @cursed
    end

    def commit_heinous_act
        @act_counter += 1
        if @act_counter > 2
            @cursed = true
        end
        
    end

    def booty
        @booty
    end

    def rob_ship
        @booty += 100
    end
end