module ApplicationHelper
  def login_helper
    if current_user.is_a?(User)
      link_to "Logout", destroy_user_session_path, method: :delete
    else
      "<h1>".html_safe + (link_to "Login", new_user_session_path) + " / " +
      (link_to "Register", new_user_registration_path) + "</h1>".html_safe
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
