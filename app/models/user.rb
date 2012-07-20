class User < ActiveRecord::Base
  attr_accessible :name
  has_many :user_candies
  has_many :candies, :through => :user_candies

  def primary_candy
    Candy.primary_for(self).first
  end
end
