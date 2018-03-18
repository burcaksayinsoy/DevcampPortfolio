module ApplicationHelper

  def login_helper
    if current_user.is_a?(User)
      link_to "Logout", destroy_user_session_path, method: :delete
    else
      (link_to "Login", new_user_session_path) +
      "<br>".html_safe +
      (link_to "Register", new_user_registration_path)
    end
  end

  def sample_helper
    "<br><br>".html_safe +
    (content_tag(:div, class: "my-class") do
      "My Content"
    end) +
    (content_tag(:p, "My Second Tag", class: "my-p-tag")) +
    (content_tag(:p, "My Third Tag", class: "my-p-tag"))
  end
end
