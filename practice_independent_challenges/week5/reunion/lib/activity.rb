class Activity
    attr_reader :activity_name,
                :participants

    def initialize(activity)
        @activity_name = activity
        @participants = {}
    end

    def add_participant(name, cost)
        @participants[name] = cost
    end

    def total_cost
        @participants.values.sum
    end

    def split
        total_cost / @participants.size
    end

    def owed
        split_cost = split
        owed_amounts = {}
        @participants.each do |name, cost|
            owed_amounts[name] = split_cost - cost
        end
        owed_amounts
    end
end