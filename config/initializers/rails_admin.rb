RailsAdmin.config do |config|

  config.authenticate_with do
    warden.authenticate! scope: :user
  end

  config.current_user_method(&:current_user)
  config.authorize_with :cancan

  config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0
  config.excluded_models = %w(Ckeditor::Asset Ckeditor::AttachmentFile Ckeditor::Picture)

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    history_index
    history_show
  end

  config.model 'FrequentlyAskedQuestion' do
    configure :question, :ck_editor
    configure :answer, :ck_editor
    list do
      field :question
    end
    show do; end
    edit do
      field :question
      field :answer
    end
    export do; end
  end

  config.model 'GostGroup' do
    visible false
    configure :name, :string 
    list do; end
    show do; end
    edit do
      field :name
    end
    export do; end
  end

  config.model 'Gost' do
    configure :gost_group, :belongs_to_association
    configure :file, :carrierwave
    list do
      field :filename
    end
    show do; end
    edit do
      field :gost_group
      field :file
    end
    export do; end
  end

  config.model 'Page' do
    configure :title, :string 
    configure :key, :string 
    configure :public, :boolean
    configure :body, :ck_editor
    list do
      field :title
      field :key
      field :public
    end
    show do; end
    edit do
      field :title
      field :body
      field :key
      field :public
    end
    export do; end
  end

  config.model 'Price' do
    configure :description, :ck_editor
    configure :file, :carrierwave
    list do
      field :filename
    end
    show do; end
    edit do
      field :description
      field :file
    end
    export do; end
  end

  config.model 'Role' do
    visible false
    configure :name, :string 
    list do; end
    show do; end
    edit do
      field :name
    end
    export do; end
  end

  config.model 'Setting' do
    configure :name, :string 
    configure :key, :string
    configure :body, :text
    list do
      field :name
    end
    show do; end
    edit do
      field :name
      field :key do
        read_only true
      end
      field :body
    end
    export do; end
  end

  config.model 'Staff' do
    configure :name, :string 
    configure :email, :string
    configure :phone, :string
    list do
      field :name
      field :email
      field :phone
    end
    show do; end
    edit do
      field :name
      field :email
      field :phone
    end
    export do; end
  end

  config.model 'User' do
    configure :roles do
      inverse_of :users
    end
    configure :id, :integer
    configure :email, :string 
    configure :password, :password         # Hidden 
    configure :password_confirmation, :password         # Hidden 
    configure :sign_in_count, :integer 
    configure :last_sign_in_at, :datetime 
    list do
      field :id
      field :email
      field :sign_in_count
      fields :last_sign_in_at
    end
    show do; end
    edit do
      field :email
      field :password
      field :roles
    end
    export do; end
  end

end
