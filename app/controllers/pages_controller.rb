class PagesController < ApplicationController

  before_action :find_page

  def show; end

  private

    def find_page
      @page = Page.find_by(key: self.class::PAGE_KEY)
    end

end
