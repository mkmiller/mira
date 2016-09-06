class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :url
      t.integer :comic_id
      t.integer :vendor_id

      t.timestamps
    end
  end
end
