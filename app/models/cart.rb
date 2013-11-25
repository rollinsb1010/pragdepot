class Cart < ActiveRecord::Base
  has_many :line_items, dependent: :destroy

  def add_product(product_id)
    @current_item = line_items.find_by_product_id(product_id) #seems can use relationship directly, i.e. has_many :line_items, and starting class of Cart is assumed?
    if @current_item
      @current_item.quantity += 1
    else
      @current_item = line_items.build(product_id: product_id)
    end
    @current_item #=> returns current_item object
  end


end
