class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :name
      t.text :address
      t.decimal :rental

      t.timestamps
    end
  end
end
