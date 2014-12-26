class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to :root, alert: exception.message
  end

  before_action :build_main_menu_items

  private

    def build_main_menu_items
      @main_menu_items = {}
      Page.published.with_key.pluck(:id, :key, :title).each do |page|
        @main_menu_items[page[1].to_sym] = {id: page[0], key: page[1], title: page[2] }
      end
    end

end
