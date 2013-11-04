class PhotoAdd < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader
	belongs_to :user
	default_scope -> { order('created_at DESC') }
	validates :content, presence: true
	validates :user_id, presence: true
end
