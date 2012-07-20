class Candy < ActiveRecord::Base
  attr_accessible :name
  has_many :user_candies
  has_many :users, :through => :user_candies

  scope :primary, joins(:user_candies => [:primary_user_candy, :user])
  scope :primary_for, lambda {|user| primary.where('users.id' => user.id) }
end
