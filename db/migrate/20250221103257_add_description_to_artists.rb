class AddDescriptionToArtists < ActiveRecord::Migration[8.0]
  def change
    add_column :artists, :description, :text
  end
end
