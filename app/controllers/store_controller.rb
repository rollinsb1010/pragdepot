class StoreController < ApplicationController
  def index
    @products  = Product.order(:title)
    @count = increment_counter
  end

end
