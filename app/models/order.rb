class Order
  include Mongoid::Document
  include Mongoid::MultiParameterAttributes
  
  field :type
  field :price, type: Float
  field :quantity, type: Integer, default: 1
  field :size
  field :card_brand
  field :card_expires_on, type: Date
  field :ip_address
  field :email
  field :first_name
  field :last_name
  field :address
  field :city
  field :state
  field :zip
  
  
  
  belongs_to :user
  has_many :transactions, dependent: :destroy
  
  attr_accessor :card_number, :card_verification
  validates_presence_of :email
  validate :validate_card
  validates_presence_of :address, :city, :state, :zip
  
  def price_in_cents
    (self.price * self.quantity * 100).round
  end
  
  def purchase
    response = GATEWAY.purchase(price_in_cents, credit_card, ip: self.ip_address)
    self.transactions.create!(action: "purchase", amount: price_in_cents, response: response)
    response.success?
  end
  
  private
  
    def validate_card
      unless credit_card.valid?
        credit_card.errors.full_messages.each do |message|
          errors.add :base, message
        end
      end
    end

    def credit_card
      @credit_card ||= ActiveMerchant::Billing::CreditCard.new(
        :brand              => card_brand,
        :number             => card_number,
        :verification_value => card_verification,
        :month              => card_expires_on.month,
        :year               => card_expires_on.year,
        :first_name         => first_name,
        :last_name          => last_name
      )
    end
end
