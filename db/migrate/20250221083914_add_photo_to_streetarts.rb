class AddPhotoToStreetarts < ActiveRecord::Migration[8.0]
  def change
    add_column :streetarts, :photo, :string
  end
end
