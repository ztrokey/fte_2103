 require './lib/item'
 require './lib/food_truck'

 RSpec.describe FoodTruck do
  describe '#initialize' do
    it 'exists' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")

      expect(food_truck).to be_a(FoodTruck)
      expect(food_truck.name).to eq("Rocky Mountain Pies")
      expect(food_truck.inventory).to eq({})
    end
  end

  describe '#check_stock' do
    it 'checks inventory' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")
      item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
      item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
      food_truck.check_stock(item1)

      expect(food_truck.check_stock(item1)).to eq(0)
    end
  end

  describe '#stock' do
    it 'adds stock to inventory' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")
      item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
      item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
      food_truck.stock(item1, 30)

      expect(food_truck.inventory.keys[0].name).to eq("Peach Pie (Slice)")
      expect(food_truck.check_stock(item1)).to eq(30)
    end

    it 'adds more stock to inventory' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")
      item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
      item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
      food_truck.stock(item1, 30)
      food_truck.stock(item1, 25)
      food_truck.stock(item2, 12)
      
      expect(food_truck.check_stock(item1)).to eq(55)
      expect(food_truck.check_stock(item2)).to eq(12)
    end
  end
end