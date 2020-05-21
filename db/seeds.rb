p "Destorying past seeds...."
Booking.destroy_all
Haircut.destroy_all
User.destroy_all

p "Creating users..."
user1 = User.create(
  email: 'admin@mail.com',
  password: '123456'
  )
p "Creating Haircuts..."
Haircut.create(title: 'Haircut', cost: '100', duration: '45', user: user1)
Haircut.create(title: 'Beard Trim', cost: '500', duration: '20', user: user1)
Haircut.create(title: 'Haircut & Beard', cost: '140', duration: '60', user: user1)

p 'Done!'
