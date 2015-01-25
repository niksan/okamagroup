module ApplicationHelper

  def main_menu_item(menu_item, link='#', options={})
    parameters = if link == request.path
      { class: 'active' }
    else
      {}
    end
    content_tag :li, parameters do
      main_menu_link(menu_item, link, options[:icon])
    end
  end

  def main_menu_link(menu_item, link, icon_class=nil)
    link_to link do
      i = icon_class ? icon(icon_class) : nil
      "<span>#{ i }#{ menu_item[:title] }</span>".html_safe
    end
  end

  def icon(icon_class='')
    content_tag(:i, nil, class: icon_class)
  end

end
