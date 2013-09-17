class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.integer :category_ref
      t.decimal :price

      t.timestamps
    end
  end
end
