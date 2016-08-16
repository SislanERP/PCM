# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Position.destroy_all
Company.destroy_all

informatica = Position.new(name: "Informatica")
informatica.save!
jefe_planta = Position.new(name: "Jefe Mant. Planta")
jefe_planta.save!

alex = User.new(email: "alex@landes.cl", name: "Alex Pacheco", password: "123456", position: informatica)
victor = User.new(email: "victor@landes.cl", name: "Victor Soto", password: "123456", position: informatica)
marcelo = User.new(email: "msoto@landes.cl", name: "Marcelo Soto", password: "123456", position: jefe_planta)


landes = Company.new(rut: "92.387.000-8", company_name: "Soc. Pesquera Landes S.A.", fantasy_name: "Landes S.A.", address: "Av. Tajamar 183 of 702, Las Condes", email: "landes@landes.cl", url: "www.landes.cl")
landes.users << alex
landes.users << victor
landes.users << marcelo
landes.save!

profish = Company.new(rut: "92.387.000-8", company_name: "Profish S.A.", fantasy_name: "Profish S.A.", address: "Av. Tajamar 183 of 702, Las Condes", email: "profish@landes.cl", url: "www.landes.cl")
profish.users << alex
profish.users << victor
profish.users << marcelo
profish.save!
