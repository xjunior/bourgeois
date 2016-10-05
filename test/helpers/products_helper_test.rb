require 'test_helper'

module Bourgeois
  class ProductsHelperTest < ActionView::TestCase
    test 'formats the price in dollars' do
      product = Bourgeois::Product.new current_price: 1100

      assert_equal product_price(product), '$11.00'
    end

    test 'formats the long description with markdown' do
      product = Bourgeois::Product.new long_description: 'best **product** ever'
      rendered = "<p>best <strong>product</strong> ever</p>\n"

      assert_equal product_long_description(product), rendered
    end

    test 'formats the long description html safe' do
      product = Bourgeois::Product.new long_description: 'lol'

      assert product_long_description(product).html_safe?
    end
  end
end
