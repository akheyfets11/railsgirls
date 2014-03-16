class Idea < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
	validates :name, presence: true, length: {maximum:5, minimum:2}
	validates :description, presence: true, format: /[A-Za-z]*/
end
