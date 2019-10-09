module ApplicationHelper
  def login_helper(style = '')
    if !current_user.is_a?(GuestUser)
      (link_to "Edit", edit_user_registration_path, class: style)  + "&ensp;".html_safe +
      (link_to "Logout", destroy_user_session_path, method: :delete, class: style)
    else
      (link_to "Login", new_user_session_path, class: style) + "&ensp;".html_safe +
      (link_to "Register", new_user_registration_path, class: style)
    end
  end

  def session_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting from #{session[:source]}"
      content_tag(:p, greeting, class: "source-greetings")
    end
  end

  def copyright_generator
    SsgCopyrightTool::Renderer.copyright "Soumya Sengupta", "All Rights Reserved"
  end

  def nav_helper style, tag_type
nav_link = <<NAV
<#{tag_type}><a href="#{root_path}" class="#{style} #{active? root_path}">Home</a></#{tag_type}>
<#{tag_type}><a href="#{blogs_path}" class="#{style} #{active? blogs_path}">Blogs</a></#{tag_type}>
<#{tag_type}><a href="#{portfolios_path}" class="#{style} #{active? portfolios_path}">Portfolios</a></#{tag_type}>
NAV
  nav_link.html_safe
  end

  def active? path
      "active" if current_page? path
  end
end
