class Review < ActiveRecord::Base
	validates :user, :house, :comment, presence: true
	belongs_to :user, dependent: :destroy
	belongs_to :house
end
