class Suggestion
  include Mongoid::Document
  include Mongoid::Timestamps
  include ActionView::Helpers::SanitizeHelper
  
  scope :recent, desc(:created_at)
  scope :popular, order_by(:star_count.desc, :comment_count.desc, :created_at.desc) 
  
  field :location
  field :music
  field :games
  field :food_drinks
  field :other
  field :stars,         type: Array, default: []
  field :star_count,    type: Integer, default: 0
  field :comment_count, type: Integer, default: 0  
  index({ id: 1})
  
  has_many :comments, as: :commentable, dependent: :destroy
  belongs_to :user
  attr_accessible :location, :music, :games, :food_drinks, :other, :stars
  validate :valid_suggestion
  
  def star(user)
    self.stars.include?(user.id) ? self.stars.delete(user.id) : self.stars << user.id
    self.star_count = self.stars.count
    self.save
    self.star_count
  end
    
  private
  
    def valid_suggestion
      strip_whitespace_and_tags
      
      unless self.location || self.music || self.games || self.food_drinks || self.other
        errors.add :base, "One of the fields must be filled out."  
      end
    end
    
    def strip_whitespace_and_tags
      if self.location
        self.location = strip_tags(self.location.strip)
        if self.location.empty?
          self.location = nil
        end
      end

      if self.music
        self.music = strip_tags(self.music.strip)
        if self.music.empty?
          self.music = nil
        end
      end

      if self.games
        self.games = strip_tags(self.games.strip)
        if self.games.empty?
          self.games = nil
        end
      end

      if self.food_drinks
        self.food_drinks = strip_tags(self.food_drinks.strip)
        if self.food_drinks.empty?
          self.food_drinks = nil
        end
      end

      if !self.other.nil?
        self.other = strip_tags(self.other.strip)
        if self.other.empty?
          self.other = nil
        end
      end
    end  
end
