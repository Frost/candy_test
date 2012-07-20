class UserCandy < ActiveRecord::Base
  attr_accessible :candy_id, :user_id
  belongs_to :user
  belongs_to :candy
  has_one :primary_user_candy
end
