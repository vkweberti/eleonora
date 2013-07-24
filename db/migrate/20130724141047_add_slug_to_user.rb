class AddSlugToUser < ActiveRecord::Migration
  def up
    add_column :products, :slug, :string
    add_index :products, :slug, unique: true
  end

  def down
    remove_column :products, :slug
    remove_index :products, :slug
  end
end
