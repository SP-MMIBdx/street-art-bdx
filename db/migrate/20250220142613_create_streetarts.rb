class CreateStreetarts < ActiveRecord::Migration[8.0]
  def change
    create_table :streetarts do |t|
      t.string :name
      t.string :location
      t.string :still_existing
      t.string :date_of_appearance
      t.text :summary
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
