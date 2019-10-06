module ApplicationHelper
  def login_helper(style)
    if current_user.is_a?(User)
      (link_to "Logout", destroy_user_session_path, method: :delete, class: style)
    else
      (link_to "Login", new_user_session_path, class: style) + " " +
      (link_to "Register", new_user_registration_path, class: style)
    end
  end

  def session_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting from #{session[:source]} and you are from #{layout_name}"
      content_tag(:p, greeting, class: "source-greetings")
    end
  end

  def copyright_generator
    SsgCopyrightTool::Renderer.copyright "Soumya Sengupta", "All Rights Reserved"
  end
end
