class Cart
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :purchased_at
  
  belongs_to :user
  has_one :order
  has_many :line_items
  
  def subtotal
    line_items.to_a.sum(&:full_price)
  end
  
  def tax
    subtotal / 10
  end
  
  def total
    subtotal + tax
  end
  
end
