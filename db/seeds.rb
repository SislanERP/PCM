# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Company.destroy_all

alex = User.new(email: "alex@landes.cl", name: "Alex Pacheco", password: "123456")
victor = User.new(email: "victor@landes.cl", name: "Victor Soto", password: "123456")
marcelo = User.new(email: "msoto@landes.cl", name: "Marcelo Soto", password: "123456")

landes = Company.new(rut: "92.387.000-8", company_name: "Soc. Pesquera Landes S.A.", fantasy_name: "Landes S.A.", address: "Av. Tajamar 183 of 702, Las Condes", email: "landes@landes.cl", url: "www.landes.cl")

marazul = Company.new(rut: "87.987.760-8", company_name: "Soc. Pesquera Mar Azul S.A.", fantasy_name: "Mar Azul S.A.", address: "Av. lokai s/n, parque industrial, Talcahuano", email: "marzaul@marazul.cl", url: "www.marazul.cl")

profish = Company.new(rut: "99.387.450-8", company_name: "Profish S.A.", fantasy_name: "Profish S.A.", address: "Av. Tajamar 183 of 702, Las Condes", email: "profish@landes.cl", url: "www.profish.cl")

CompanyUser.new(user: marcelo, company: landes, position: "Jefe Mantención").save!
CompanyUser.new(user: marcelo, company: marazul, position: "Jefe Mantención").save!
CompanyUser.new(user: alex, company: landes, position: "Informatica").save!
CompanyUser.new(user: alex, company: profish, position: "Informatica").save!
CompanyUser.new(user: alex, company: marazul, position: "Informatica").save!
CompanyUser.new(user: victor, company: landes, position: "Informatica").save!
CompanyUser.new(user: victor, company: profish, position: "Informatica").save!
