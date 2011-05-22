module ApplicationHelper
  def class_for_element_menu(name)
    if params[:controller] == "home" && name == t("link.main_page")
      "active"
    elsif params[:controller] == "profiles" && name == t("link.profile")
      "active"
    elsif params[:controller] == "posts" && !params[:type].blank? && name == t("link.my_posts")
      "active"
    elsif params[:controller] == "posts" && (params[:action] == "new" || params[:action] == "create") && name == t("link.create_post")
      "active"
    else
      "no_active"
    end
  end
end
