require 'rails_helper'
RSpec.describe Point, type: :model do
    before(:all) do
        @point = Point.create(title: "Test Title #{rand 1000}", coordinates: '{"type":"Point","coordinates":[75.53417968750074, 30.701395862889825]}')
    end

    after(:each) do
        @point.destroy
    end

    it 'checks that a point can be created' do
        expect(@point).to be_valid
    end

    it 'checks that a point can be updated' do
        @point.update(:title => "Test Title - Remastered")
        expect(Point.find_by_title("Test Title - Remastered")).to eq(@point)
    end

    it 'checks that a point can be destroyed' do
        @count = Point.count
        @point.destroy
        expect(Point.count).to eq(@count-1)
    end

    it 'checks that a point can be destroyed' do
        @point.destroy
        expect(Point.find_by(title: "Test Title - Remastered")).to be_nil
    end
end