module ApplicationHelper

  def find_page(name, action)
    @current_page = Page.find_by(name: "#{name}_#{action}")
  end
end
