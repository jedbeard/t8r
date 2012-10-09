module ApplicationHelper

  def body_class(view_class)
    body_class = []
    body_class << "root" if current_page?(root_url)
    body_class << view_class if view_class.present?
    body_class << controller_name
    body_class << action_name
    body_class.join(" ")
  end

end
