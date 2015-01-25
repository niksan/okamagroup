class GostsController < PagesController

  PAGE_KEY='gost'

  def index
    @gost_groups = GostGroup.includes(:gosts).all
  end

end
