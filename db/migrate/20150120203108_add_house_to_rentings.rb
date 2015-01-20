class AddHouseToRentings < ActiveRecord::Migration
  def change
    add_column :rentings, :house_id, :integer
  end
end
