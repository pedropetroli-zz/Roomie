class CreateRentings < ActiveRecord::Migration
  def change
    create_table :rentings do |t|
      t.string :arrival
      t.string :departure
      t.string :insurance

      t.timestamps
    end
  end
end
