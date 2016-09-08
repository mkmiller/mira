class CreateAnthologies < ActiveRecord::Migration[5.0]
  def change
    create_table :anthologies do |t|
      t.string :name
      t.string :slug
      t.string :publisher
      t.datetime :published_at

      t.timestamps
    end
    add_index :anthologies, :slug, unique: true

    # add supporting foreign keys
    add_column :comics, :anthology_id, :integer
    add_column :comics, :published_at, :datetime
    add_column :products, :anthology_id, :integer
  end
end
