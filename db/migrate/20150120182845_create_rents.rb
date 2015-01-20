class CreateRents < ActiveRecord::Migration
  def change
    create_table :rents do |t|
      t.string :country
      t.string :state
      t.string] :city

      t.timestamps
    end
  end
end
