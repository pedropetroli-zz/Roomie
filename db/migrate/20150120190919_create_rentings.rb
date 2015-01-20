class CreateRentings < ActiveRecord::Migration
  def change
    create_table :rentings do |t|
      t.string :country
      t.string :state
      t.string :city

      t.timestamps
    end
  end
end
