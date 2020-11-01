# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

movies = Movie.create([{ title: 'The big movie' }, { title: 'The hit' }])
people = Person.create([
  { first_name: 'John', last_name: 'Simmons' },
  { first_name: 'Jane', last_name: 'Smith' },
  { first_name: 'Julian', last_name: 'Summers' },
])
Role.create([{ name: Role::CAST_MEMBER }, { name: Role::PRODUCER }, { name: Role::DIRECTOR }])

director_role = Role.find_by :name => Role::DIRECTOR
producer_role = Role.find_by :name => Role::PRODUCER
cast_member_role = Role.find_by :name => Role::CAST_MEMBER

# Assign director
Credit.create({ :movie_id => movies.first.id, :person_id => people.first.id, :role_id => director_role.id })
# Assign producer
Credit.create({ :movie_id => movies.first.id, :person_id => people.second.id, :role_id => producer_role.id })
# Assign actor
Credit.create({ :movie_id => movies.first.id, :person_id => people.third.id, :role_id => cast_member_role.id })
