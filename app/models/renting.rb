class Renting < ActiveRecord::Base
	validates :arrival, :departure, :insurance, presence: true

	belongs_to :house
	belongs_to :guest, class_name: "User"
  	belongs_to :host, class_name: "User"
end
