class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :genre_id
      t.string :name, null: false
      t.text :describe, null: false
      t.string :jan_code, null: false
      t.string :image_id, null: false

      t.timestamps
    end
  end
end
