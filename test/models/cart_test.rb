require 'test_helper'

class CartTest < ActiveSupport::TestCase
  test "adds an item to the cart" do 
  	cart = Cart.new
  	cart.add_product(products(:ruby).id, products(:ruby).price)
  	assert cart.save
  end

  test "adds multiple items to the cart" do 
  	cart = Cart.new
  	cart.add_product(products(:coffee).id, products(:coffee).price)
  	cart.add_product(products(:ruby).id, products(:ruby).price)
  	assert cart.save
  end
end
