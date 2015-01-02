class PricesController < PagesController

  PAGE_KEY='prices'

  def index
    @prices = Price.all
  end

end
