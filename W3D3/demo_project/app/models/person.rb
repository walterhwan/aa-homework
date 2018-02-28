class Person < ApplicationRecord
  belongs_to :houses,
    primary_key: :id,
    foreign_key: :house_id,
    class_name: 'House'
end

if $PROGRAM_NAME == __FILE__
  house = House.new(address: '308 Negra Arroyo Lane')
  person = Person.new(name: 'Walter White', house_id: house.id)
  p house
  p person

  # p house.save!
  # p person.save!

  p House.all
  p Person.all
end
