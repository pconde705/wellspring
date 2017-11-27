class CreateRewards < ActiveRecord::Migration[5.1]
  def change
    create_table :rewards do |t|
      t.integer :project_id, null: false
      t.integer :amount, null: false
      t.string :reward_subtitle, null: false
      t.string :reward_description, null: false
      t.string :includes
      t.date :reward_date
      t.integer :reward_backers

      t.timestamps
    end
  end
end
