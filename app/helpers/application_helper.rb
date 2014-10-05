module ApplicationHelper

  def define_body_id
    [controller_name, action_name].join('-')
  end
end
