u = User.create(email: 'example@example.com', password: '123qwe123', password_confirmation: '123qwe123')
r = Role.create(name: 'admin')
u.roles << r
u.save
Page.create(title: 'Главная', key: 'main', public: true)
Page.create(title: 'Услуги', key: 'services', public: true)
Page.create(title: 'Продукция', key: 'products', public: true)
Page.create(title: 'FAQ', key: 'faq', public: true)
Page.create(title: 'Контакты', key: 'contacts', public: true)
