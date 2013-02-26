class Transaction
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :action
  field :amount, type: Integer
  field :success, type: Boolean
  field :authorization
  field :message
  field :params
  
  belongs_to :order

  def response=(response)
    self.success       = response.success?
    self.authorization = response.authorization
    self.message       = response.message
    self.params        = response.params
  rescue ActiveMerchant::ActiveMerchantError => e
    self.success       = false
    self.authorization = nil
    self.message       = e.message
    self.params        = {}
  end
end
