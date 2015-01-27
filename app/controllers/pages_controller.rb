class PagesController < ApplicationController

  load_and_authorize_resource class: 'Page'
  before_action :find_page, only: :index

  def show; end

  private

    def find_page
      @page = Page.includes(:prices).find_by(key: self.class::PAGE_KEY)
    end

end
