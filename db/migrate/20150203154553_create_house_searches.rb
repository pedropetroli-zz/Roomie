class CreateHouseSearches < ActiveRecord::Migration
  def change
    create_table :house_searches do |t|
      t.integer :house_id
      t.date :arrival
      t.date :departure
      t.decimal :total_amounth
      t.decimal :rental
      t.decimal :fee
      t.decimal :insurance

      t.timestamps
    end
  end
end
