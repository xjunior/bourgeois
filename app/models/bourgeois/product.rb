module Bourgeois
  class Product < ApplicationRecord
    def price_in_dollars
      current_price / 100.0
    end
  end
end
