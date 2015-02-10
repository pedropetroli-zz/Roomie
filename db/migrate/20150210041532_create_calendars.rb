class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.integer :house_id
      t.date :arrival
      t.date :departure

      t.timestamps
    end
  end
end
