class Pin < ActiveRecord::Base
	validates :description, presence: true

	belongs_to :user

	validate :user_id, presence: true
end
