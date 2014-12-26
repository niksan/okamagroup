class MainController < PagesController
  
  PAGE_KEY = 'main'
  
  def index
    render '/pages/show'
  end

end
