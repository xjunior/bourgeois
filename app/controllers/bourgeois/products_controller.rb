module Bourgeois
  class ProductsController < ::ApplicationController
    before_action :set_product, only: [:show, :edit, :update, :destroy]

    # GET /products
    def index
      @products = Product.all
    end

    # GET /products/1
    def show
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_product
        @product = Product.find(params[:id])
    end
  end
end
