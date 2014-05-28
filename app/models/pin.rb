class Pin < ActiveRecord::Base
	has_attached_file :image, :styles => { :large => "500x500#", :square => "500x450!"}
	
	validates :description, presence: true

	belongs_to :user

	validate :user_id, presence: true

	validates_attachment :image, presence: true,
															 content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']},
															 size: { less_than: 10.megabytes}
end
