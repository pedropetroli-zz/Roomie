class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :house_id
      t.integer :renting_id
      t.integer :rating_1
      t.integer :rating_2

      t.timestamps
    end
  end
end
