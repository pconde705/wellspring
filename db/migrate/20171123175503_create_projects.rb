class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title, null: false
      t.integer :creator_id, null: false
      t.string :category, null: false
      t.string :main_image_url
      t.string :extra_image_url
      t.text :description, null: false
      t.integer :goal, null: false
      t.integer :money_raised
      t.integer :backers

      t.timestamps
    end
    add_index :projects, :title
    add_index :projects, :category
  end
end
