class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price, precision: 8, scale: 2, defalt: 0
      t.integer :size, default: 0
      t.string :make
      t.string :material
      t.text :care
      t.boolean :is_new, default: true

      t.timestamps
    end
  end
end
