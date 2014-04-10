class PagesController < ApplicationController
  def about
    respond_to do |format|
      format.html # index.html.erb
    end
  end
end
