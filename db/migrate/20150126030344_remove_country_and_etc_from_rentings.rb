class RemoveCountryAndEtcFromRentings < ActiveRecord::Migration
  def change
    remove_column :rentings, :country, :string
    remove_column :rentings, :state, :string
    remove_column :rentings, :city, :string
  end
end
