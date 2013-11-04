module PhotoAddsHelper
	def photo_for(photo_add)
      image_tag(photo_add.avatar.url)
  	end
end
