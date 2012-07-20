class CreateUserCandies < ActiveRecord::Migration
  def change
    create_table :user_candies do |t|
      t.integer :user_id
      t.integer :candy_id

      t.timestamps
    end
  end
end
