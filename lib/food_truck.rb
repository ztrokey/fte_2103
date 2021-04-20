class FoodTruck
  attr_reader :name, :inventory

  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def check_stock(item)
    @inventory[item]
  end

  def stock(item, quantity)
    @inventory[item] += quantity
  end
end
# Heres what my pry says, am I testing this wrong? Yup, I had .sum on check stock.
# pry(#<FoodTruck>)> inventory
# => {#<Item:0x00007fbb79b37748 @name="Peach Pie (Slice)", @price=3.75>=>55,
#<Item:0x00007fbb79b37590 @name="Apple Pie (Slice)", @price=2.5>=>12}

  #   stock_items = {}
  #   @inventory.each do |item, quantity|
  #     @inventory[item] += quantity
  #     #####Spent way too long on this. I need help!
  #   end
  #   stock_items
  #   require 'pry'; binding.pry
  # end
