class Job < ActiveRecord::Base
  acts_as_taggable
  attr_accessible :apply_email, :category_id, :company_description, :company_name, :contact, :description, :keywords, :terms, :title, :website
  belongs_to :category

  validates_presence_of :title, :company_name, :category_id, :company_description, :company_name, :website, :description, :apply_email, :contact
  validates_length_of :company_description, :minimum => 30, :allow_blank => false
  validates_format_of :apply_email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/


  def name_and_category
    if self.category.nil?
      "<span>#{self.company_name}</span>".html_safe
    else
      "<span>#{self.company_name}</span>/<span>#{self.category.name}</span>".html_safe
    end
  end
end
