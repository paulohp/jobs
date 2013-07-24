class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.string :company_name
      t.string :website
      t.string :category
      t.string :company_description
      t.string :keywords
      t.string :apply_email
      t.string :contact
      t.boolean :terms

      t.timestamps
    end
  end
end
