require './lib/item'
require './lib/food_truck'
require './lib/event'

RSpec.describe Event do
  describe '#initialize' do
    it 'exists' do
      event = Event.new("South Pearl Street Farmers Market")

      expect(event).to be_a(Event)
    end

    it 'has attributes' do
      event = Event.new("South Pearl Street Farmers Market")

      expect(event.name).to eq("South Pearl Street Farmers Market")
      expect(event.food_trucks).to eq([])
    end
  end

  describe '#add_food_truck' do
    it 'adds a food truck' do
      event = Event.new("South Pearl Street Farmers Market")
      food_truck1 = FoodTruck.new("Rocky Mountain Pies")
      event.add_food_truck(food_truck1)

      expect(event.food_trucks.length).to eq(1)
    end
  end
 end