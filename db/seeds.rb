u = User.create(email: 'example@example.com', password: '123qwe123', password_confirmation: '123qwe123')
r = Role.create(name: 'admin')
u.roles << r
u.save
