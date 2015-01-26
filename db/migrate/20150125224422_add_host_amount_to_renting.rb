class AddHostAmountToRenting < ActiveRecord::Migration
  def change
    add_column :rentings, :host_amount, :integer
  end
end
