require 'test_helper'

module Bourgeois
  class ProductTest < ActiveSupport::TestCase
    test "price_in_dollars is current_price / 100" do
      product = Bourgeois::Product.new(current_price: 1050)
      assert_equal product.price_in_dollars, 10.5
    end
  end
end
