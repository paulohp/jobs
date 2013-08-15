class AddCategoryIdToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :category_id, :integer
    remove_column :jobs, :category
  end
end
