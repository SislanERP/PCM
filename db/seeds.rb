# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Position.destroy_all

p = Position.new(name: "Informatica")
p.users.build(email: "alex@landes.cl", name: "Alex Pacheco", password: "123456")
p.users.build(email: "victor@landes.cl", name: "Victor Soto", password: "123456")
p.save!
p = Position.new(name: "Jefe Mant. Planta")
p.users.build(email: "msoto@landes.cl", name: "Marcelo Soto", password: "123456")
p.save!
