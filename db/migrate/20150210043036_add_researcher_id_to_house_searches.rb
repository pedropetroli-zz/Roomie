class AddResearcherIdToHouseSearches < ActiveRecord::Migration
  def change
    add_column :house_searches, :researcher_id, :integer
  end
end
