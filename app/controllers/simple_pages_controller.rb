class SimplePagesController < ApplicationController
  def landing_page
     @products = Product.limit(9)
  end
end
