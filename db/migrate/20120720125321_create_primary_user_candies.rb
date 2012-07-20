class CreatePrimaryUserCandies < ActiveRecord::Migration
  def change
    create_table :primary_user_candies do |t|
      t.integer :user_candy_id

      t.timestamps
    end
  end
end
