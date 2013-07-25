class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :attachable_id
      t.string :attachable_type
      t.string :file

      t.timestamps
    end
  end
end
