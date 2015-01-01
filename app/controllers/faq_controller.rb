class FaqController < PagesController

  PAGE_KEY='faq'
  load_and_authorize_resource class: 'FrequentlyAskedQuestion'

  def index
    @frequently_asked_questions = FrequentlyAskedQuestion.all
  end

end
