class ContactsController < PagesController
  
  PAGE_KEY='contacts'

  def index
    @staff = Staff.all
  end

end
