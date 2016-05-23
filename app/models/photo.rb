class Photo < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :likes

  validates :image, :presence => true
  validates :user_id, :presence => true  
end
#
# class Movie
#   has_many :characters
#   has_many :actors, :through => :characters
# end
#
# class Character
#   belongs_to :movie
#   belongs_to :actor
# end
#
# class Actor
#   has_many :characters
#   has_many :movies, :through => :characters
# end
