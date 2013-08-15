class Job < ActiveRecord::Base
  acts_as_taggable
  attr_accessible :apply_email, :category, :company_description, :company_name, :contact, :description, :keywords, :terms, :title, :website
  belongs_to :category
end
