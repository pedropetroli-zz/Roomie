class ChangesName < ActiveRecord::Migration
  def change
  	rename_column :rentings, :ensurance, :insurance
  end
end
