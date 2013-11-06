class AddPhotoStorage < ActiveRecord::Migration
  def change
  	remove_column :photo_adds, :avatar
  	add_column :photo_adds, :avatar, :oid
  end
end
