class ContactsController < PagesController
  
  PAGE_KEY='contacts'

  def index
    @staff_groups = StaffGroup.includes(:staffs).all
  end

end
