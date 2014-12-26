module ApplicationHelper

  def main_menu_item(menu_item, link='#')
    return unless menu_item
    parameters = if menu_item[:key] == controller_name
      { class: 'active' }
    else
      {}
    end
    content_tag :li, parameters do
      main_menu_link(menu_item, link)
    end
  end

  def main_menu_link(menu_item, link)
    link_to link do
      content_tag :span, menu_item[:title]
    end
  end

end
