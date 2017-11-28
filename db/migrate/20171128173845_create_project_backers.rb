class CreateProjectBackers < ActiveRecord::Migration[5.1]
  def change
    create_table :project_backers do |t|
      t.integer :project_id
      t.integer :reward_id
      t.integer :backer_id

      t.timestamps
    end
  end
end
