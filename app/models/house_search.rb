class HouseSearch < ActiveRecord::Base
	validates :arrival, :departure, presence: true

	belongs_to :house
end
