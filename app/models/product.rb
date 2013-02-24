class Product
  include Mongoid::Document
  
  field :name,  type: String
  field :price, type: Integer
  field :pictures, type: Array, default: []
  field :num_sold, default: 0
  
  validates_presence_of :name, :price, :pictures
end
