class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true

  has_many :houses, dependent: :destroy
  has_many :rents, class_name: "Rentings", foreign_key: "host_id"
  has_many :hires, class_name: "Rentings", foreign_key: "guest_id"
end
