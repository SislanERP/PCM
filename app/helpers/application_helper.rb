module ApplicationHelper

  def is_active_controller(controller_name)
    params[:controller] == controller_name ? "active" : nil
  end

  def is_active_action(controller_name, action_name)
    (is_active_controller(controller_name) and params[:action] == action_name) ? "active" : nil
  end

  def is_active_list_of_device()
    if is_active_controller('devices')
      case
      when params[:action] == 'index'
        "active"
      when params[:action] == 'show'
        "active"
      else
        nil
      end
    else
      nil
    end
  end

  def is_active_device()
    case
    when params[:controller] == 'devices'
      "active"
    when params[:controller] == 'device_types'
      "active"
    else
      nil
    end
  end

end
