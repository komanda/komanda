class LineItem
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :type
  field :quantity
  field :size
  belongs_to :cart
  belongs_to :product
  
  def full_price
    quantity.to_i * product.price.to_f
  end
end
