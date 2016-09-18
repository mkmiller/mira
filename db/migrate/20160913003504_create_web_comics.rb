class CreateWebComics < ActiveRecord::Migration[5.0]
  def change
    create_table :web_comics do |t|
      t.string :name
      t.string :slug

      t.timestamps
    end
    add_index :web_comics, :slug, unique: true

    create_table :comic_pages do |t|
      t.integer :number
      t.integer :artwork_id
      t.integer :web_comic_id

      t.timestamps
    end
  end
end
