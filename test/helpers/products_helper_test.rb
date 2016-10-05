require 'test_helper'

module Bourgeois
  class ProductsHelperTest < ActionView::TestCase
    test "formats the price in dollars" do
      product = Bourgeois::Product.new(current_price: 1100)

      assert_equal product_price(product), '$11.00'
    end
  end
end
