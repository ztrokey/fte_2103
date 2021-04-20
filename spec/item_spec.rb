require './lib/item'

RSpec.describe Item do
 describe '#initialize' do
   it 'exists' do
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})

     expect(item1).to be_a(Item)
   end

   it 'has attributes' do
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})

     expect(item1.name).to eq('Peach Pie (Slice)')
     expect(item1.price).to eq("$3.75")
   end
 end
end