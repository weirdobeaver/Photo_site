class User < ActiveRecord::Base
	has_many :photo_adds
	before_save { self.name = name.downcase }
	validates :name, presence: true, uniqueness: { case_sensitive: false }
	has_secure_password
	validates :password, length: { minimum: 6 }
end
