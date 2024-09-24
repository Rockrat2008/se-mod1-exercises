require './spec/spec_helper'

RSpec.describe Activity do
    before(:each) do
        @activity = Activity.new('Brunch')
    end

    it 'can initiailize and return variables' do
        expect(@activity).to be_an_instance_of(Activity)
        expect(@activity.activity_name).to eq("Brunch")
        expect(@activity.participants).to eq({})
    end

    it 'can add participants' do
        @activity.add_participant("Maria", 20)
        expect(@activity.participants).to eq({"Maria" => 20})
        @activity.add_participant("Luther", 40)
        expect(@activity.participants).to eq({"Maria" => 20, "Luther" => 40})
    end

    it 'can get the total cost' do
        @activity.add_participant("Maria", 20)
        @activity.add_participant("Luther", 40)
        expect(@activity.total_cost).to eq(60)
    end

    it 'can get the split of the bill' do
        @activity.add_participant("Maria", 20)
        @activity.add_participant("Luther", 40)
        expect(@activity.split).to eq(30)
    end

    it 'can calculate what is owed' do
        @activity.add_participant("Maria", 20)
        @activity.add_participant("Luther", 40)
        expect(@activity.owed).to eq({"Maria" => 10, "Luther" => -10})
    end
end