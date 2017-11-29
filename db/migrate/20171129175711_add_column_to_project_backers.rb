class AddColumnToProjectBackers < ActiveRecord::Migration[5.1]
  def change
    add_column :project_backers, :cash_only, :integer
  end
end
