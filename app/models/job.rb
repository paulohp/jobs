class Job < ActiveRecord::Base
  acts_as_taggable
  attr_accessible :apply_email, :category, :company_description, :company_name, :contact, :description, :keywords, :terms, :title, :website
  belongs_to :category

  def name_and_category
    if self.category.nil?
      "<span>#{self.company_name}</span>".html_safe
    else
      "<span>#{self.company_name}</span>/<span>#{self.category.name}</span>".html_safe
    end
  end
end
