module Bourgeois
  class ProductsController < ::ApplicationController
    # GET /products
    def index
    end

    # GET /products/1
    def show
    end

    private

    helper_method :product
    def product
      @product ||= Product.find(params[:id])
    end

    helper_method :products
    def products
      @products ||= Product.all
    end
  end
end
