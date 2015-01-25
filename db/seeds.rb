u = User.create(email: 'example@example.com', password: '123qwe123', password_confirmation: '123qwe123')
r = Role.create(name: 'admin')
u.roles << r
u.save

Page.create(title: 'Главная', key: 'main', public: true)
Page.create(title: 'Услуги', key: 'services', public: true)
Page.create(title: 'Продукция', key: 'prices', public: true)
Page.create(title: 'Производство', key: 'manufacture', public: true)
Page.create(title: 'ГОСТЫ и ТУ', key: 'gost', public: true)
Page.create(title: 'FAQ', key: 'faq', public: true)
Page.create(title: 'Контакты', key: 'contacts', body: 'контактная информация самой крутой воронежской организации', public: true)
Page.create(title: 'Спецпредложения', key: 'specials', body: '', public: true)

Setting.create(name: 'Аннотация', key: 'annotation', body: 'Главное направление: развитие технологий производства инновационной продукции в секторе строительного арматурного проката и изделий строительного назначения.(текст на замену)')
Setting.create(name: 'Адрес', key: 'location', body: ' ')
Setting.create(name: 'Телефон', key: 'phone', body: ' ')
Setting.create(name: 'Email', key: 'email', body: 'info@okamagroup.com')
Setting.create(name: 'Сайт', key: 'website', body: 'okamagroup.com')
Setting.create(name: 'страница Twitter', key: 'twitter', body: '#')
Setting.create(name: 'страница Facebook', key: 'facebook', body: '#')
Setting.create(name: 'Координаты(широта, долгота)', key: 'lat_lng', body: '51.671273, 39.217176')

FrequentlyAskedQuestion.create(question: 'Текст тестовго вопроса', answer: 'Здесь - текст тестового ответа')
FrequentlyAskedQuestion.create(question: 'Текст тестовго вопроса', answer: 'Здесь - текст тестового ответа')
FrequentlyAskedQuestion.create(question: 'Текст тестовго вопроса', answer: 'Здесь - текст тестового ответа')
