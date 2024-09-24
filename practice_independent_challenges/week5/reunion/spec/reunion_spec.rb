require './spec/spec_helper'

RSpec.describe Reunion do
    before(:each) do
        @reunion = Reunion.new("1406 BE")
    end

    it 'can initialiize and return variables' do
        expect(@reunion).to be_an_instance_of(Reunion)
        expect(@reunion.name).to eq("1406 BE")
        expect(@reunion.activities).to eq([])
    end

    it 'can add an activity' do
        activity_1 = Activity.new("Brunch")
        @reunion.add_activity(activity_1)
        expect(@reunion.activities.length).to eq(1)
        expect(@reunion.activities[0].activity_name).to eq("Brunch")
    end
end