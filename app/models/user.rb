class User
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :provider
  field :uid
  field :name
  field :image_url
  field :profile_url
  field :email, default: nil
  field :admin, default: false  
  index({ provider: 1, uid: 1}, { unique: true })
  
  has_many :comments, dependent: :destroy
  has_many :suggestions, dependent: :destroy
  has_many :shares, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_and_belongs_to_many :events
  attr_accessible :provider, :uid, :email, :name, :image_url, :profile_url
  validates_presence_of :provider, :uid
  
  def self.create_with_omniauth(auth)
    
    create! do |user|
      user.provider   = auth["provider"]
      user.uid        = auth["uid"]
      user.name       = auth["info"]["name"] || "Anonymous"
      user.image_url  = auth["info"]["image"] || "star_empty.png"
      
      if auth["provider"] == "twitter"
        user.profile_url =  auth["info"]["urls"]["Twitter"]
      elsif auth["provider"] == "facebook"
        user.profile_url = auth["info"]["urls"]["Facebook"]
      else
        user.profile_url = auth["extra"]["raw_info"]["link"]
      end  
      
    end
  end
  
  def update_email(email)
    self.email = email
    self.save
  end
end
