# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do
  Cat.destroy_all

  Cat.create!(birth_date: '1988/02/28', name: 'Mason', sex: 'M', color: 'black', description: 'He is a good catty')
  Cat.create!(birth_date: '1970/01/28', name: 'Gray', sex: 'M', color: 'blue', description: 'He is an old catty')
  Cat.create!(birth_date: '2016/03/18', name: 'May', sex: 'F', color: 'white', description: 'She is a cool catty')


end
