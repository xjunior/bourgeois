require 'redcarpet'

module Bourgeois
  module ProductsHelper
    def product_price(product)
      number_to_currency product.price_in_dollars
    end

    def product_long_description(product)
      markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, {
        autolink: true,
        tables: true
      })
      markdown.render(product.long_description.to_s).html_safe
    end
  end
end
