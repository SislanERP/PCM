module ApplicationHelper
  def is_active_controller(controller_name)
    params[:controller] == controller_name ? "active" : nil
  end

  def is_active_action(controller_name, action_name)
    (is_active_controller(controller_name) and params[:action] == action_name) ? "active" : nil
  end
end
