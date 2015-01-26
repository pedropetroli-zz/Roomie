class AddMoreFieldsToRentings < ActiveRecord::Migration
  def change
    add_column :rentings, :arrival, :date
    add_column :rentings, :departure, :date
    add_column :rentings, :rent_rate, :integer
    add_column :rentings, :total_rental, :integer
    add_column :rentings, :fee, :integer
    add_column :rentings, :ensurance, :boolean
  end
end
