module PhotoAddsHelper
	def photo_for(photo_add)
      image_tag(photo_add.avatar.url)
  	end

  	def thumb_for(photo_add)
  		image_tag(photo_add.avatar.url, :class => "small_thumb")
  	end

  	def main_page_thumb_for(photo_add)
  		image_tag(photo_add.avatar.url, :class => "thumb")
  	end
end
