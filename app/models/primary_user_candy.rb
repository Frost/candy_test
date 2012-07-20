class PrimaryUserCandy < ActiveRecord::Base
  attr_accessible :user_candy_id
  belongs_to :user_candy

  validate do |puc|
    if user_candy.user.primary_candy
      errors.add(:base, "User already has a primary  candy")
    end
  end
end
