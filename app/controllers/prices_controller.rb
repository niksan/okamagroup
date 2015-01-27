class PricesController < PagesController

  PAGE_KEY='prices'

  def index
    @prices = Price.unassigned
  end

end
