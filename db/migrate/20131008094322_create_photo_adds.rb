class CreatePhotoAdds < ActiveRecord::Migration
  def change
    create_table :photo_adds do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
    add_index :photo_adds, [:user_id, :created_at]
  end
end
