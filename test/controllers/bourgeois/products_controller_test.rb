require 'test_helper'

module Bourgeois
  class ProductsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @product = bourgeois_products(:one)
    end

    test "should get index" do
      get products_url
      assert_response :success
    end

    test "should show product" do
      get product_url(@product)
      assert_response :success
    end
  end
end
