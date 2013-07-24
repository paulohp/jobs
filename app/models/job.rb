class Job < ActiveRecord::Base
  attr_accessible :apply_email, :category, :company_description, :company_name, :contact, :description, :keywords, :terms, :title, :website
end
