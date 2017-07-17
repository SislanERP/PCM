alex = User.new(email: "alex@landes.cl", name: "Alex Pacheco", password: "123456")
victor = User.new(email: "victor@landes.cl", name: "Victor Soto", password: "123456")
marcelo = User.new(email: "msoto@landes.cl", name: "Marcelo Soto", password: "123456")

administrador = Role.new(name: "Administrador")
mantenedor = Role.new(name: "Mantenedor")
lector = Role.new(name: "Lector")

landes = Company.new(rut: "92.387.000-8", company_name: "Soc. Pesquera Landes S.A.", fantasy_name: "Landes S.A.", address: "Av. Tajamar 183 of 702, Las Condes", email: "landes@landes.cl", url: "www.landes.cl", slug: "landes")

CompanyUser.new(user: marcelo, company: landes, role: lector, position: "Jefe Mantención").save!

CompanyUser.new(user: alex, company: landes, role: administrador, position: "Informatica").save!

CompanyUser.new(user: victor, company: landes, role: lector, position: "Informatica").save!

landes_rocuant = Branch.new(name: "Isla Rocuant",
                            address: "Isla Rocuant S/N, Talcahuano",
                            company: landes)

landes_sanvicente = Branch.new(name: "San Vicente",
                            address: "Caleta Infiernillo S/N, Talcahuano",
                            company: landes)

landes_ttp = Branch.new(name: "Puerto Talcahuano (TTP)",
                            address: "Blanco Encalada 3456, Talcahuano",
                            company: landes)

landes_santiago = Branch.new(name: "Santiago",
                            address: "Av. Tajamar 183 of 702, Las Condes, Santiago",
                            company: landes).save!

landes_harina = Plant.new(name: "Planta de Harina", branch: landes_rocuant).save!
landes_congelado = Plant.new(name: "Planta de Congelado", branch: landes_rocuant).save!
landes_jibia = Plant.new(name: "Planta de Jibia", branch: landes_rocuant).save!
landes_aceite = Plant.new(name: "Planta de Aceite", branch: landes_rocuant).save!
landes_hidrolizado = Plant.new(name: "Planta de Hidrolizado", branch: landes_rocuant).save!
landes_casino = Plant.new(name: "Casino", branch: landes_rocuant).save!
landes_descarga_industrial = Plant.new(name: "Descarga Industrial", branch: landes_sanvicente).save!
landes_descarga_artesanal = Plant.new(name: "Descarga Artesanal", branch: landes_ttp).save!

# Providers Landes
landes_york_chile = Provider.new(company_name: 'YORK CHILE', contact_name: 'JONSON CONTROL ', contact_phone: '(56-2) 784 8900', contact_email: 'mail@york.cl').save!
landes_weg_chile = Provider.new(company_name: 'WEG CHILE', contact_name: 'WEG CHILE', contact_phone: '(56-2) 784 8900', contact_email: ' info-cl@weg.net').save!
landes_sihi_chile = Provider.new(company_name: 'SIHI CHILE', contact_name: 'ANDRES RIFFO', contact_phone: '041- 2259311', contact_email: 'mail@sihi-chile.com').save!
landes_sew_eurodrive = Provider.new(company_name: 'sew-eurodrive', contact_name: 'sew-eurodrive', contact_phone: '41 - 489529', contact_email: 'concepcion@sew-eurodrive.cl').save!
landes_lureye = Provider.new(company_name: 'Lureye', contact_name: 'Lureye', contact_phone: '2 - 897 5000', contact_email: 'info@lureye.cl').save!
landes_ferran = Provider.new(company_name: 'FERRAN', contact_name: 'FERRAN', contact_phone: '2 - 897 5000', contact_email: 'mail@ferran.cl').save!
landes_ducase = Provider.new(company_name: 'DUCASE', contact_name: 'DUCASE', contact_phone: '2 - 897 5000', contact_email: 'mail@ducase.cl').save!
landes_conmetal = Provider.new(company_name: 'Conmetal', contact_name: 'Alejandro Enriquez', contact_phone: '41 - 584098 / 591836', contact_email: 'mail@comental.cl').save!
landes_cleaver_brook = Provider.new(company_name: 'CLEAVER BROOK', contact_name: 'JUAN  RIQUELME', contact_phone: '2 - 897 5000', contact_email: 'mail@brook.cl').save!
landes_alfa_laval_chile = Provider.new(company_name: 'ALFA LAVAL CHILE', contact_name: ' Lilian Gutierrez ', contact_phone: '02-3530318/02-3530300', contact_email: 'mail@laval.com').save!

# Task Types
mecanica = TaskType.create!(name: "Mecánica", icon: "fa fa-cog")
electrica = TaskType.create!(name: "Eléctrica", icon: "fa fa-flash")
instrumentacion = TaskType.create!(name: "Instrumentación", icon: "fa fa-dashboard")
lubricacion = TaskType.create!(name: "Lubricación", icon: "fa fa-tint")
