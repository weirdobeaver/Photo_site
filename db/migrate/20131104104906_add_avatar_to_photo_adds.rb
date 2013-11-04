class AddAvatarToPhotoAdds < ActiveRecord::Migration
  def change
    add_column :photo_adds, :avatar, :string
  end
end
