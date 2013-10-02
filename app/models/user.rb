class User < ActiveRecord::Base
	before_save { self.name = name.downcase }
	validates :name, presence: true, uniqueness: { case_sensitive: false }
	has_secure_password
	validates :pasword, length: { minimum: 6 }
end
