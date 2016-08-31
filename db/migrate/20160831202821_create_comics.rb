class CreateComics < ActiveRecord::Migration[5.0]
  def change
    create_table :comics do |t|
      t.string :name
      t.string :publisher
      t.string :role
      t.string :slug

      t.timestamps
    end
    add_index :comics, :slug, unique: true
  end
end
