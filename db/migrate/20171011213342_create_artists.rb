class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :age
      t.text :bio
      t.string :image_url

      t.timestamps
    end
  end
end
