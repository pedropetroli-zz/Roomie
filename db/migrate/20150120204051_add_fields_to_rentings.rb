class AddFieldsToRentings < ActiveRecord::Migration
  def change
    add_column :rentings, :host_id, :integer
    add_column :rentings, :guest_id, :integer
  end
end
