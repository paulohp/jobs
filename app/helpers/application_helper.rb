module ApplicationHelper
  def mail_to text, to, args
    "<a href='mailto:#{to}' class='#{args}'>#{text}</a>".html_safe
  end
end
