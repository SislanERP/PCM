Device.destroy_all
Provider.destroy_all
DeviceType.destroy_all
System.destroy_all
Plant.destroy_all
Branch.destroy_all
User.destroy_all
Company.destroy_all
Role.destroy_all

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

alex = User.new(email: "alex@landes.cl", name: "Alex Pacheco", password: "123456")
victor = User.new(email: "victor@landes.cl", name: "Victor Soto", password: "123456")
marcelo = User.new(email: "msoto@landes.cl", name: "Marcelo Soto", password: "123456")

administrador = Role.new(name: "Administrador")
mantenedor = Role.new(name: "Mantenedor")
lector = Role.new(name: "Lector")

landes = Company.new(rut: "92.387.000-8", company_name: "Soc. Pesquera Landes S.A.", fantasy_name: "Landes S.A.", address: "Av. Tajamar 183 of 702, Las Condes", email: "landes@landes.cl", url: "www.landes.cl")

marazul = Company.new(rut: "87.987.760-8", company_name: "Soc. Pesquera Mar Azul S.A.", fantasy_name: "Mar Azul S.A.", address: "Av. lokai s/n, parque industrial, Talcahuano", email: "marzaul@marazul.cl", url: "www.marazul.cl")

profish = Company.new(rut: "99.387.450-8", company_name: "Profish S.A.", fantasy_name: "Profish S.A.", address: "Av. Tajamar 183 of 702, Las Condes", email: "profish@landes.cl", url: "www.profish.cl")

CompanyUser.new(user: marcelo, company: landes, role: lector, position: "Jefe Mantención").save!
CompanyUser.new(user: marcelo, company: marazul, role: administrador, position: "Jefe Mantención").save!
CompanyUser.new(user: alex, company: landes, role: administrador, position: "Informatica").save!
CompanyUser.new(user: alex, company: profish, role: lector, position: "Informatica").save!
CompanyUser.new(user: alex, company: marazul, role: mantenedor, position: "Informatica").save!
CompanyUser.new(user: victor, company: landes, role: lector, position: "Informatica").save!
CompanyUser.new(user: victor, company: profish, role: administrador, position: "Informatica").save!


landes_rocuant = Branch.new(name: "Isla Rocuant",
                            address: "Isla Rocuant S/N, Talcahuano",
                            company: landes)

landes_sanvicente = Branch.new(name: "San Vicente",
                            address: "Caleta Infiernillo S/N, Talcahuano",
                            company: landes)

landes_ttp = Branch.new(name: "Puerto Talcahuano (TTP)",
                            address: "Blanco Encalada 3456, Talcahuano",
                            company: landes)

profish_rocuant = Branch.new(name: "Isla Rocuant",
                            address: "Isla Rocuant S/N, Talcahuano",
                            company: profish)

marazul_thno = Branch.new(name: "Talcahuano",
                            address: "Carlos Condell 345, Talcahuano",
                            company: marazul)

landes_harina = Plant.new(name: "Planta de Harina", branch: landes_rocuant)
landes_congelado = Plant.new(name: "Planta de Congelado", branch: landes_rocuant)
landes_jibia = Plant.new(name: "Planta de Jibia", branch: landes_rocuant)
landes_aceite = Plant.new(name: "Planta de Aceite", branch: landes_rocuant)
landes_hidrolizado = Plant.new(name: "Planta de Hidrolizado", branch: landes_rocuant)
landes_casino = Plant.new(name: "Casino", branch: landes_rocuant)
landes_descarga_industrial = Plant.new(name: "Descarga Industrial", branch: landes_sanvicente)
landes_descarga_artesanal = Plant.new(name: "Descarga Artesanal", branch: landes_ttp)

profish_harina = Plant.new(name: "Planta de Harina", branch: profish_rocuant)
profish_congelado = Plant.new(name: "Planta de Congelado", branch: profish_rocuant)
profish_jibia = Plant.new(name: "Planta de Jibia", branch: profish_rocuant)
profish_aceite = Plant.new(name: "Planta de Aceite", branch: profish_rocuant)
profish_hidrolizado = Plant.new(name: "Planta de Hidrolizado", branch: profish_rocuant)
profish_casino = Plant.new(name: "Casino", branch: profish_rocuant)

marazul_harina = Plant.new(name: "Planta de Harina", branch: marazul_thno)
marazul_congelado = Plant.new(name: "Planta de Congelado", branch: marazul_thno)
marazul_jibia = Plant.new(name: "Planta de Jibia", branch: marazul_thno)
marazul_aceite = Plant.new(name: "Planta de Aceite", branch: marazul_thno)
marazul_hidrolizado = Plant.new(name: "Planta de Hidrolizado", branch: marazul_thno)
marazul_casino = Plant.new(name: "Casino", branch: marazul_thno)

#System of Landes
landes_CAPTURADORA_DE_AGUA_MAR = System.create!(name: "CAPTURADORA DE AGUA MAR", plant: landes_harina)
landes_CALDERA = System.create!(name: "CALDERA", plant: landes_harina)
landes_POZOS = System.create!(name: "POZOS", plant: landes_harina)
landes_COCEDORES_Y_PRENSA = System.create!(name: "COCEDORES Y PRENSA", plant: landes_harina)
landes_SECADORES = System.create!(name: "SECADORES", plant: landes_harina)
landes_PLANTA_EVAPORADORA = System.create!(name: "PLANTA EVAPORADORA", plant: landes_harina)
landes_LINEA_FINAL = System.create!(name: "LINEA FINAL", plant: landes_harina)
landes_PLANTA_DE_PRATAMIENTO = System.create!(name: "PLANTA DE PRATAMIENTO", plant: landes_harina)
landes_ALTA_TENSION = System.create!(name: "ALTA TENSION", plant: landes_harina)
landes_SALA_DE_MAQUINAS = System.create!(name: "SALA DE MAQUINAS", plant: landes_harina)
landes_TUNELES_ESTATICOS = System.create!(name: "TUNELES ESTATICOS", plant: landes_congelado)
landes_CAMARA_DE_MANTENCION = System.create!(name: "CAMARA DE MANTENCION", plant: landes_congelado)
landes_SALA_DE_HIELO = System.create!(name: "SALA DE HIELO", plant: landes_congelado)
landes_CONGELADO = System.create!(name: "PLANTA DE CONGELADO", plant: landes_congelado)
landes_RED_CONDENSADO = System.create!(name: "RED CONDENSADO", plant: landes_harina)
landes_RED_VAPOR = System.create!(name: "RED VAPOR", plant: landes_harina)
landes_RED_AGUA_POTABLE = System.create!(name: "RED AGUA POTABLE", plant: landes_harina)
landes_RED_PETROLEO_Nro_6  = System.create!(name: "RED PETROLEO Nro 6", plant: landes_harina)
landes_RED_PETROLEO_DIESEL = System.create!(name: "RED PETROLEO  DIESEL", plant: landes_harina)
landes_RED_AGUA_DE_COLA = System.create!(name: "RED AGUA DE COLA", plant: landes_aceite)
landes_RECEPCIÓN_MATERIA_PRIMA = System.create!(name: "RECEPCIÓN MATERIA PRIMA", plant: landes_harina)
landes_MOLIENDA_PREPARACIÓN_DE_PESCA = System.create!(name: "MOLIENDA PREPARACIÓN DE PESCA", plant: landes_harina)
landes_REACTORES = System.create!(name: "REACTORES", plant: landes_harina)
landes_PASTEURIZADO = System.create!(name: "PASTEURIZADO", plant: landes_harina)
landes_PLANTAS_CONCENTRADORAS = System.create!(name: "PLANTAS CONCENTRADORAS", plant: landes_harina)
landes_SECADOR = System.create!(name: "SECADOR", plant: landes_harina)
landes_AREA_SECA = System.create!(name: "AREA SECA", plant: landes_harina)
landes_CASINO = System.create!(name: "CASINO", plant: landes_casino)
landes_ESTANQUES_DE_ACEITE = System.create!(name:"ESTANQUES DE ACEITE", plant: landes_aceite)
landes_PLANTA_DE_ACEITE = System.create!(name:"PLANTA DE ACEITE", plant: landes_aceite)

#System of Profish
profish_CAPTURADORA_DE_AGUA_MAR = System.create!(name: "CAPTURADORA DE AGUA MAR", plant: profish_harina)
profish_CALDERA = System.create!(name: "CALDERA", plant: profish_harina)
profish_POZOS = System.create!(name: "POZOS", plant: profish_harina)
profish_COCEDORES_Y_PRENSA = System.create!(name: "COCEDORES Y PRENSA", plant: profish_harina)
profish_SECADORES = System.create!(name: "SECADORES", plant: profish_harina)
profish_PLANTA_EVAPORADORA = System.create!(name: "PLANTA EVAPORADORA", plant: profish_harina)
profish_LINEA_FINAL = System.create!(name: "LINEA FINAL", plant: profish_harina)
profish_PLANTA_DE_PRATAMIENTO = System.create!(name: "PLANTA DE PRATAMIENTO", plant: profish_harina)
profish_ALTA_TENSION = System.create!(name: "ALTA TENSION", plant: profish_harina)
profish_SALA_DE_MAQUINAS = System.create!(name: "SALA DE MAQUINAS", plant: profish_harina)
profish_TUNELES_ESTATICOS = System.create!(name: "TUNELES ESTATICOS", plant: profish_congelado)
profish_CAMARA_DE_MANTENCION = System.create!(name: "CAMARA DE MANTENCION", plant: profish_congelado)
profish_SALA_DE_HIELO = System.create!(name: "SALA DE HIELO", plant: profish_congelado)
profish_CONGELADO = System.create!(name: "PLANTA DE CONGELADO", plant: profish_congelado)
profish_RED_CONDENSADO = System.create!(name: "RED CONDENSADO", plant: profish_harina)
profish_RED_VAPOR = System.create!(name: "RED VAPOR", plant: profish_harina)
profish_RED_AGUA_POTABLE = System.create!(name: "RED AGUA POTABLE", plant: profish_harina)
profish_RED_PETROLEO_Nro_6  = System.create!(name: "RED PETROLEO Nro 6", plant: profish_harina)
profish_RED_PETROLEO_DIESEL = System.create!(name: "RED PETROLEO  DIESEL", plant: profish_harina)
profish_RED_AGUA_DE_COLA = System.create!(name: "RED AGUA DE COLA", plant: profish_aceite)
profish_RECEPCIÓN_MATERIA_PRIMA = System.create!(name: "RECEPCIÓN MATERIA PRIMA", plant: profish_harina)
profish_MOLIENDA_PREPARACIÓN_DE_PESCA = System.create!(name: "MOLIENDA PREPARACIÓN DE PESCA", plant: profish_harina)
profish_REACTORES = System.create!(name: "REACTORES", plant: profish_harina)
profish_PASTEURIZADO = System.create!(name: "PASTEURIZADO", plant: profish_harina)
profish_PLANTAS_CONCENTRADORAS = System.create!(name: "PLANTAS CONCENTRADORAS", plant: profish_harina)
profish_SECADOR = System.create!(name: "SECADOR", plant: profish_harina)
profish_AREA_SECA = System.create!(name: "AREA SECA", plant: profish_harina)
profish_CASINO = System.create!(name: "CASINO", plant: profish_casino)
profish_ESTANQUES_DE_ACEITE = System.create!(name:" ESTANQUES DE ACEITE", plant: profish_aceite)
profish_PLANTA_DE_ACEITE = System.create!(name:"PLANTA DE ACEITE", plant: profish_aceite)

#System of Mar Azul
marazul_CAPTURADORA_DE_AGUA_MAR = System.create!(name: "CAPTURADORA DE AGUA MAR", plant: marazul_harina)
marazul_CALDERA = System.create!(name: "CALDERA", plant: marazul_harina)
marazul_POZOS = System.create!(name: "POZOS", plant: marazul_harina)
marazul_COCEDORES_Y_PRENSA = System.create!(name: "COCEDORES Y PRENSA", plant: marazul_harina)
marazul_SECADORES = System.create!(name: "SECADORES", plant: marazul_harina)
marazul_PLANTA_EVAPORADORA = System.create!(name: "PLANTA EVAPORADORA", plant: marazul_harina)
marazul_LINEA_FINAL = System.create!(name: "LINEA FINAL", plant: marazul_harina)
marazul_PLANTA_DE_PRATAMIENTO = System.create!(name: "PLANTA DE PRATAMIENTO", plant: marazul_harina)
marazul_ALTA_TENSION = System.create!(name: "ALTA TENSION", plant: marazul_harina)
marazul_SALA_DE_MAQUINAS = System.create!(name: "SALA DE MAQUINAS", plant: marazul_harina)
marazul_TUNELES_ESTATICOS = System.create!(name: "TUNELES ESTATICOS", plant: marazul_congelado)
marazul_CAMARA_DE_MANTENCION = System.create!(name: "CAMARA DE MANTENCION", plant: marazul_congelado)
marazul_SALA_DE_HIELO = System.create!(name: "SALA DE HIELO", plant: marazul_congelado)
marazul_CONGELADO = System.create!(name: "PLANTA DE CONGELADO", plant: marazul_congelado)
marazul_RED_CONDENSADO = System.create!(name: "RED CONDENSADO", plant: marazul_harina)
marazul_RED_VAPOR = System.create!(name: "RED VAPOR", plant: marazul_harina)
marazul_RED_AGUA_POTABLE = System.create!(name: "RED AGUA POTABLE", plant: marazul_harina)
marazul_RED_PETROLEO_Nro_6  = System.create!(name: "RED PETROLEO Nro 6", plant: marazul_harina)
marazul_RED_PETROLEO_DIESEL = System.create!(name: "RED PETROLEO  DIESEL", plant: marazul_harina)
marazul_RED_AGUA_DE_COLA = System.create!(name: "RED AGUA DE COLA", plant: marazul_aceite)
marazul_RECEPCIÓN_MATERIA_PRIMA = System.create!(name: "RECEPCIÓN MATERIA PRIMA", plant: marazul_harina)
marazul_MOLIENDA_PREPARACIÓN_DE_PESCA = System.create!(name: "MOLIENDA PREPARACIÓN DE PESCA", plant: marazul_harina)
marazul_REACTORES = System.create!(name: "REACTORES", plant: marazul_harina)
marazul_PASTEURIZADO = System.create!(name: "PASTEURIZADO", plant: marazul_harina)
marazul_PLANTAS_CONCENTRADORAS = System.create!(name: "PLANTAS CONCENTRADORAS", plant: marazul_harina)
marazul_SECADOR = System.create!(name: "SECADOR", plant: marazul_harina)
marazul_AREA_SECA = System.create!(name: "AREA SECA", plant: marazul_harina)
marazul_CASINO = System.create!(name: "CASINO", plant: marazul_casino)
marazul_ESTANQUES_DE_ACEITE = System.create!(name:" ESTANQUES DE ACEITE", plant: marazul_aceite)
marazul_PLANTA_DE_ACEITE = System.create!(name:"PLANTA DE ACEITE", plant: marazul_aceite)

# Device_Type for Landes
landes_zew = DeviceType.new(name: 'ZEW ')
landes_zenith_pummps = DeviceType.new(name: 'ZENITH PUMMPS')
landes_weg_m092020 = DeviceType.new(name: 'WEG M092020')
landes_weg_90_s = DeviceType.new(name: 'WEG 90 S')
landes_weg_315fn = DeviceType.new(name: 'WEG 315FN')
landes_weg_100_l = DeviceType.new(name: 'WEG 100 L')
landes_waukesha_inoxidable = DeviceType.new(name: 'Waukesha Inoxidable')
landes_viking_ls125 = DeviceType.new(name: 'VIKING LS125')
landes_vem_kper_250_m4 = DeviceType.new(name: 'VEM KPER 250 M4')
landes_vem_160l6 = DeviceType.new(name: 'VEM 160L6')
landes_uniclocer_motor_884td = DeviceType.new(name: 'UNICLOCER MOTOR 884TD')
landes_termo_equipos = DeviceType.new(name: 'Termo equipos ')
landes_termo_equipo_con_serpentin = DeviceType.new(name: 'Termo equipo con serpentin')
landes_sunitomo_chhjf4165 = DeviceType.new(name: 'SUNITOMO CHHJF4165')
landes_spence_3x2 = DeviceType.new(name: 'SPENCE 3X2')
landes_sihi_sc_15026_ob = DeviceType.new(name: 'SIHI SC 15026 OB')
landes_sihi_nowa6520 = DeviceType.new(name: 'SIHI NOWA6520')
landes_sihi_160m = DeviceType.new(name: 'SIHI 160M')
landes_siemens_160_m = DeviceType.new(name: 'Siemens 160 M')
landes_siemens_112_m = DeviceType.new(name: 'SIEMENS 112 M')
landes_siemens_100_l = DeviceType.new(name: 'SIEMENS 100 L')
landes_sabroe_sab_202_sf = DeviceType.new(name: 'SABROE SAB 202 SF')
landes_saacke_pag_25c2 = DeviceType.new(name: 'Saacke Pag 25C2')
landes_rossi_inoxidable = DeviceType.new(name: 'Rossi inoxidable')
landes_radicon_m102022 = DeviceType.new(name: 'RADICON M102022')
landes_radicon_m082014 = DeviceType.new(name: 'RADICON M082014')
landes_radicom_72014 = DeviceType.new(name: 'RADICOM 72014')
landes_pedrollo_cp_158 = DeviceType.new(name: 'Pedrollo CP 158')
landes_pascal_ar_3800 = DeviceType.new(name: 'Pascal Ar 3800')
landes_mtf_ts_560_m2 = DeviceType.new(name: 'MTF TS 560 M2')
landes_monno_ne = DeviceType.new(name: 'Monno NE')
landes_mmc_fodema = DeviceType.new(name: 'MMC FODEMA ')
landes_madef_gg_3030 = DeviceType.new(name: 'MADEF GG 3030')
landes_madef_ge_30x2 = DeviceType.new(name: 'MADEF GE 30X2')
landes_leroy_somer_compac_200 = DeviceType.new(name: 'LEROY SOMER COMPAC 200')
landes_femco_n250 = DeviceType.new(name: 'FEMCO N250')
landes_fan_separator = DeviceType.new(name: 'FAN SEPARATOR ')
landes_falk_1o90fc2a = DeviceType.new(name: 'FALK 1O90FC2A')
landes_dodge_scxt5256 = DeviceType.new(name: 'DODGE SCXT5256')
landes_copec_90_m3 = DeviceType.new(name: 'Copec 90 m3')
landes_conmetal_whe__nd__1600 = DeviceType.new(name: 'Conmetal WHE  ND  1600')
landes_conmetal_svt__3630_rt = DeviceType.new(name: 'CONMETAL SVT  3630 RT')
landes_compac_2000 = DeviceType.new(name: 'COMPAC 2000 ')
landes_comcar_20 = DeviceType.new(name: 'comcar 20')
landes_brook_crompton_l184tke = DeviceType.new(name: 'BROOK CROMPTON L184TKE')
landes_blackmer_rx_67a03 = DeviceType.new(name: 'Blackmer RX 67A03')
landes_blackmer_np_4f = DeviceType.new(name: 'Blackmer NP 4F')
landes_blackmer_np_2f = DeviceType.new(name: 'Blackmer NP 2F')
landes_bauer = DeviceType.new(name: 'BAUER ')
landes_baldor_cm3157t = DeviceType.new(name: 'BALDOR CM3157T')
landes_alfa_laval_413 = DeviceType.new(name: 'ALFA LAVAL 413')
landes_alfa_laval_313 = DeviceType.new(name: 'ALFA LAVAL 313')
landes_abs_as0840_m26_dks = DeviceType.new(name: 'ABS AS0840 M26 DKS')
landes_abb_m3aa160l4 = DeviceType.new(name: 'ABB M3AA160L4')
landes_nowa_65_20 = DeviceType.new(name: 'NOWA 65 20')
landes_estanque_inoxidable = DeviceType.new(name: 'Estanque inoxidable')
landes_estanque_acero_carbono = DeviceType.new(name: 'Estanque acero carbono')

# Providers Landes
landes_york_chile = Provider.new(company_name: 'YORK CHILE', contact_name: 'JONSON CONTROL ', contact_phone: '(56-2) 784 8900', contact_email: 'mail@york.cl')
landes_weg_chile = Provider.new(company_name: 'WEG CHILE', contact_name: 'WEG CHILE', contact_phone: '(56-2) 784 8900', contact_email: ' info-cl@weg.net')
landes_sihi_chile = Provider.new(company_name: 'SIHI CHILE', contact_name: 'ANDRES RIFFO', contact_phone: '041- 2259311', contact_email: 'mail@sihi-chile.com')
landes_sew_eurodrive = Provider.new(company_name: 'sew-eurodrive', contact_name: 'sew-eurodrive', contact_phone: '41 - 489529', contact_email: 'concepcion@sew-eurodrive.cl')
landes_lureye = Provider.new(company_name: 'Lureye', contact_name: 'Lureye', contact_phone: '2 - 897 5000', contact_email: 'info@lureye.cl')
landes_ferran = Provider.new(company_name: 'FERRAN', contact_name: 'FERRAN', contact_phone: '2 - 897 5000', contact_email: 'mail@ferran.cl')
landes_ducase = Provider.new(company_name: 'DUCASE', contact_name: 'DUCASE', contact_phone: '2 - 897 5000', contact_email: 'mail@ducase.cl')
landes_conmetal = Provider.new(company_name: 'Conmetal', contact_name: 'Alejandro Enriquez', contact_phone: '41 - 584098 / 591836', contact_email: 'mail@comental.cl')
landes_cleaver_brook = Provider.new(company_name: 'CLEAVER BROOK', contact_name: 'JUAN  RIQUELME', contact_phone: '2 - 897 5000', contact_email: 'mail@brook.cl')
landes_alfa_laval_chile = Provider.new(company_name: 'ALFA LAVAL CHILE', contact_name: ' Lilian Gutierrez ', contact_phone: '02-3530318/02-3530300', contact_email: 'mail@laval.com')

# Device Landes
landes_LCO01 = Device.new(serial_number: 'L-CO.01',
  name: 'COMPRESOR N°1',
  brand_model: 'SABROE SAB 202 SF',
  description: '',
  observation: '',
  potency: '',
  production_capacity: '1843 M3/H',
  admission_date: '22-10-2010',
  system: landes_SALA_DE_MAQUINAS,
  device_type: landes_sabroe_sab_202_sf,
  provider: landes_york_chile).save!

landes_LCO02 = Device.new(serial_number: 'L-CO.02', name: 'COMPRESOR N°2', brand_model: 'SABROE SAB 202 SF', admission_date: '12-10-2010', description: '', observation: '', potency: '', production_capacity: '1843 M3/H', system: landes_SALA_DE_MAQUINAS, device_type: landes_sabroe_sab_202_sf, provider: landes_york_chile).save!
landes_LCO03 = Device.new(serial_number: 'L-CO.03', name: 'COMPRESOR N°3', brand_model: 'SABROE SAB 202 SF', admission_date: '12-10-2010', description: '', observation: '', potency: '', production_capacity: '1843 M3/H', system: landes_SALA_DE_MAQUINAS, device_type: landes_sabroe_sab_202_sf, provider: landes_york_chile).save!
landes_LCO04 = Device.new(serial_number: 'L-CO.04', name: 'COMPRESOR N°4', brand_model: 'SABROE SAB 202 SF', admission_date: '12-10-2010', description: '', observation: '', potency: '', production_capacity: '1229 M3/H', system: landes_SALA_DE_MAQUINAS, device_type: landes_sabroe_sab_202_sf, provider: landes_york_chile).save!
landes_LCO05 = Device.new(serial_number: 'L-CO.05', name: 'COMPRESOR N°5', brand_model: 'SABROE SAB 202 SF', admission_date: '12-10-2010', description: '', observation: '', potency: '', production_capacity: '1598 M3/H', system: landes_SALA_DE_MAQUINAS, device_type: landes_sabroe_sab_202_sf, provider: landes_york_chile).save!
landes_LCO06 = Device.new(serial_number: 'L-CO.06', name: 'COMPRESOR N°6', brand_model: 'SABROE SAB 202 SF', admission_date: '12-10-2010', description: '', observation: '', potency: '', production_capacity: '1600,2 M3/H', system: landes_SALA_DE_MAQUINAS, device_type: landes_sabroe_sab_202_sf, provider: landes_york_chile).save!
landes_LCO07 = Device.new(serial_number: 'L-CO.07', name: 'COMPRESOR N°7', brand_model: 'SABROE SAB 202 SF', admission_date: '12-10-2010', description: '', observation: '', potency: '', production_capacity: '1600,2 M3/H', system: landes_SALA_DE_MAQUINAS, device_type: landes_sabroe_sab_202_sf, provider: landes_york_chile).save!
landes_LCO08 = Device.new(serial_number: 'L-CO.08', name: 'COMPRESOR N°8', brand_model: 'SABROE SAB 202 SF', admission_date: '12-10-2010', description: '', observation: '', potency: '', production_capacity: '1233,2 M3/H', system: landes_SALA_DE_MAQUINAS, device_type: landes_sabroe_sab_202_sf, provider: landes_york_chile).save!
landes_EMR09 = Device.new(serial_number: 'E-MR.09', name: 'Motorreductor Tornillo Salida 2 Secador Rotadisc 1', brand_model: 'SUNITOMO CHHJF4165', admission_date: '12-10-2010', description: '', observation: '', potency: '15 KW', production_capacity: '1455', system: landes_SECADORES, device_type: landes_sunitomo_chhjf4165, provider: landes_weg_chile).save!
landes_EME03 = Device.new(serial_number: 'E-ME.03', name: 'Motor  Eléctrico  Secador  4.', brand_model: 'VEM KPER 250 M4', admission_date: '12-10-2010', description: '', observation: '', potency: '75 KW', production_capacity: '1474', system: landes_SECADORES, device_type: landes_vem_kper_250_m4, provider: landes_weg_chile).save!
landes_FME29 = Device.new(serial_number: 'F-ME.29', name: 'Motor Elect. Bba 1 Aceite Centrif.1,2,3 a Tk Almac', brand_model: 'WEG 100 L', admission_date: '12-10-2010', description: '', observation: 'ROD. 6206 ZZ- 6205 ZZ  ACOPLPLAMIENTO  FALK', potency: '3 kw', production_capacity: '1420', system: landes_PLANTA_DE_ACEITE, device_type: landes_weg_100_l, provider: landes_weg_chile).save!
landes_EME11 = Device.new(serial_number: 'E-ME.11', name: 'Motor Ventilador Inducido Pos Secador', brand_model: 'WEG 315FN', admission_date: '01-06-1996', description: '', observation: '', potency: '180 HP', production_capacity: '1500', system: landes_SECADORES, device_type: landes_weg_315fn, provider: landes_weg_chile).save!
landes_DMR14 = Device.new(serial_number: 'D-MR.14', name: 'Motoreductor  Elevador  2   a  Desmenuzador', brand_model: 'WEG M092020', admission_date: '12-10-2010', description: '', observation: '', potency: '11 KW', production_capacity: '20/59', system: landes_COCEDORES_Y_PRENSA, device_type: landes_weg_m092020, provider: landes_weg_chile).save!
landes_GBC01 = Device.new(serial_number: 'G-BC-01', name: 'Bomba Codenso Limpio', brand_model: 'SIHI NOWA6520', admission_date: '12-10-2010', description: '', observation: '', potency: '', production_capacity: '214', system: landes_PLANTA_EVAPORADORA, device_type: landes_sihi_nowa6520, provider: landes_sihi_chile).save!
landes_EBC01 = Device.new(serial_number: 'E-BC.01', name: 'Bomba Lavador de Gases Pos Secador', brand_model: 'SIHI SC 15026 OB', admission_date: '12-10-2010', description: '300 M3/hora  a  20 mca,  30 kw', observation: '', potency: '300 M3/H', production_capacity: '1445', system: landes_SECADORES, device_type: landes_sihi_sc_15026_ob, provider: landes_sihi_chile).save!
landes_BBE05 = Device.new(serial_number: 'B-BE-05', name: 'Bomba  Petroleo   6  de  Estanque  a  Estanque  Diario', brand_model: 'VIKING LS125', admission_date: '12-10-2010', description: '', observation: 'chequeo de prensa estopa-chequeo de nivel de aceite- mantención de aislación -lubricación', potency: '', production_capacity: '980', system: landes_CALDERA, device_type: landes_viking_ls125, provider: landes_sihi_chile).save!
landes_HMT01 = Device.new(serial_number: 'H-MT-01', name: 'Motovariador Cinta Transportadora  Línea  1', brand_model: 'ZEW ', admission_date: '12-10-2010', description: '', observation: '', potency: '', production_capacity: '', system: landes_LINEA_FINAL, device_type: landes_zew, provider: landes_sew_eurodrive).save!
landes_HTC03 = Device.new(serial_number: 'H-TC-03', name: 'Cinta  Transportadora  Línea   3', brand_model: 'ZEW ', admission_date: '12-10-2010', description: '', observation: '', potency: '', production_capacity: '', system: landes_LINEA_FINAL, device_type: landes_zew, provider: landes_sew_eurodrive).save!
landes_FME24 = Device.new(serial_number: 'F-ME.24', name: 'Motor Eléctrico Lava Platos  Centrifugas', brand_model: 'SIEMENS 100 L', admission_date: '12-10-2010', description: '', observation: '', potency: '3.2 KW', production_capacity: '1410', system: landes_PLANTA_DE_ACEITE, device_type: landes_siemens_100_l, provider: landes_lureye).save!
landes_HMR15 = Device.new(serial_number: 'H-MR-15', name: 'Moto  reductor  Cinta  Transportadora  Salida  de Sacos', brand_model: 'SIEMENS 112 M', admission_date: '12-10-2010', description: '', observation: '', potency: '8.2 KW', production_capacity: '1440', system: landes_LINEA_FINAL, device_type: landes_siemens_112_m, provider: landes_lureye).save!
landes_FME31 = Device.new(serial_number: 'F-ME.31', name: 'Motor Bomba Lodo Centrifuga  1,2,3', brand_model: 'Siemens 160 M', admission_date: '12-10-2010', description: '', observation: '', potency: '15 HP', production_capacity: '1460', system: landes_PLANTA_DE_ACEITE, device_type: landes_siemens_160_m, provider: landes_lureye).save!
landes_EME17 = Device.new(serial_number: 'E-ME.17', name: 'Motor Eléctrico Chancho  Limpiador de Harina 1', brand_model: 'VEM 160L6', admission_date: '12-10-2010', description: '', observation: '', potency: '15 HP', production_capacity: '965', system: landes_SECADORES, device_type: landes_vem_160l6, provider: landes_lureye).save!
landes_EME15 = Device.new(serial_number: 'E-ME.15', name: 'Motor  Eléctrico   Enfriador  1', brand_model: 'VEM KPER 250 M4', admission_date: '12-10-2010', description: '', observation: '', potency: '75 HP', production_capacity: '1475', system: landes_SECADORES, device_type: landes_vem_kper_250_m4, provider: landes_lureye).save!
landes_EME18 = Device.new(serial_number: 'E-ME.18', name: 'Motor  Eléctrico  Enfriador Harina 2', brand_model: 'VEM KPER 250 M4', admission_date: '12-10-2010', description: '', observation: '', potency: '75 HP', production_capacity: '1475', system: landes_SECADORES, device_type: landes_vem_kper_250_m4, provider: landes_lureye).save!
landes_BME09 = Device.new(serial_number: 'B-ME.09', name: 'Motor Eléctrico Bomba  petroleo N° 6 a caldera 4 ', brand_model: 'BALDOR CM3157T', admission_date: '12-10-2010', description: '', observation: '', potency: '2HP', production_capacity: '1775', system: landes_CALDERA, device_type: landes_baldor_cm3157t, provider: landes_ferran).save!
landes_ERD05 = Device.new(serial_number: 'E-RD.05', name: 'Reductor Pos Secador', brand_model: 'FALK 1O90FC2A', admission_date: '12-10-2010', description: '', observation: '', potency: '', production_capacity: '', system: landes_SECADORES, device_type: landes_falk_1o90fc2a, provider: landes_ducase).save!
landes_ESC02 = Device.new(serial_number: 'E-SC.02.', name: 'Secador  2.', brand_model: 'CONMETAL SVT  3630 RT', admission_date: '12-10-2010', description: 'Area  Calefaccion 1.108 m2; Capacidad  Secado 6.900 kilos agua/Hora; humedad torta entrada 55%; humedad torta salida 8%, consumo vapor 8.200 Kg/hora  a 5 Bars de presion. Peso  equipo  80 toneladas, largo  cilindro 20 metros, diametro cilindro 3,6 metros', observation: 'Debido al proyecto de extracción de vahos, el ventilador de asistencia fue retirado.', potency: '30 ton/hrs', production_capacity: '', system: landes_SECADORES, device_type: landes_conmetal_svt__3630_rt, provider: landes_conmetal).save!
landes_ESC01 = Device.new(serial_number: 'E-SC.01.', name: 'Secador  1.', brand_model: 'CONMETAL SVT  3630 RT', admission_date: '12-10-2010', description: 'Area Calefacción 1.108 m2; Capacidad Secado 6.900 Kilos agua/hora; humedad Torta entrada 55%; humedad Torta salida 8%, Consumo Vapor 8.200 Kg/hora a 5 Bars de Presion. Peso  equipo  80 Toneladas, Largo cilindro 20 metros, Diametro cilindro 3,6 metros  ', observation: 'Debido al proyecto de extracción de vahos, el ventilador de asistencia fue retirado.', potency: '30 Ton/hrs', production_capacity: '', system: landes_SECADORES, device_type: landes_conmetal_svt__3630_rt, provider: landes_conmetal).save!
landes_GEF01 = Device.new(serial_number: 'G-EF-01', name: 'Efecto ° 1', brand_model: 'Conmetal WHE  ND  1600', admission_date: '12-10-2010', description: 'Dimensiones generales de 1600 mm Diametro; altura  15700 mm', observation: '', potency: '', production_capacity: '', system: landes_PLANTA_EVAPORADORA, device_type: landes_conmetal_whe__nd__1600, provider: landes_conmetal).save!
landes_GEF04 = Device.new(serial_number: 'G-EF-04', name: 'Efecto ° 4', brand_model: 'Conmetal WHE  ND  1600', admission_date: '12-10-2010', description: '', observation: '', potency: '', production_capacity: '', system: landes_PLANTA_EVAPORADORA, device_type: landes_conmetal_whe__nd__1600, provider: landes_conmetal).save!
landes_DMR06 = Device.new(serial_number: 'D-MR.06', name: 'Motoreductor   1  Pre Strainer  1', brand_model: 'RADICOM 72014', admission_date: '12-10-2010', description: 'Motor  WEG 112 M', observation: '', potency: '4 KW', production_capacity: '1470', system: landes_COCEDORES_Y_PRENSA, device_type: landes_radicom_72014, provider: landes_conmetal).save!
landes_DMR12 = Device.new(serial_number: 'D-MR.12', name: 'Motor  Reductor Tornillo   Recolector  Prensa  1,2', brand_model: 'RADICON M082014', admission_date: '12-10-2010', description: '', observation: '', potency: '7.5', production_capacity: '14.76/1', system: landes_COCEDORES_Y_PRENSA, device_type: landes_radicon_m082014, provider: landes_conmetal).save!
landes_DMR17 = Device.new(serial_number: 'D-MR.17', name: 'Motor Reductor  Tornillo  Elevador  1  a  Secado', brand_model: 'RADICON M102022', admission_date: '12-10-2010', description: '', observation: '', potency: '15 KW', production_capacity: '21.57/1', system: landes_COCEDORES_Y_PRENSA, device_type: landes_radicon_m102022, provider: landes_conmetal).save!
landes_BME03 = Device.new(serial_number: 'B-ME.03', name: 'Motor Principal  Caldera   3', brand_model: 'UNICLOCER MOTOR 884TD', admission_date: '12-10-2010', description: '', observation: '', potency: '30 HP', production_capacity: '3520', system: landes_CALDERA, device_type: landes_uniclocer_motor_884td, provider: landes_cleaver_brook).save!
landes_FST06 = Device.new(serial_number: 'F-ST.06', name: 'Separadora  Centrifuga  6', brand_model: 'ALFA LAVAL 313', admission_date: '12-10-2010', description: '', observation: '', potency: '', production_capacity: '', system: landes_PLANTA_DE_ACEITE, device_type: landes_alfa_laval_313, provider: landes_alfa_laval_chile).save!
landes_FST05 = Device.new(serial_number: 'F-ST.05', name: 'Separadora  Centrifuga  5', brand_model: 'ALFA LAVAL 413', admission_date: '12-10-2010', description: '', observation: '', potency: '', production_capacity: '', system: landes_PLANTA_DE_ACEITE, device_type: landes_alfa_laval_413, provider: landes_alfa_laval_chile).save!
landes_FME11 = Device.new(serial_number: 'F-ME.11', name: 'Motor  Eléctrico  Tornillo  Desludger  2', brand_model: 'ABB M3AA160L4', admission_date: '12-10-2010', description: '', observation: '', potency: '11 KW', production_capacity: '1461', system: landes_PLANTA_DE_ACEITE, device_type: landes_abb_m3aa160l4, provider: landes_alfa_laval_chile).save!
landes_FME09 = Device.new(serial_number: 'F-ME.09', name: 'Motor  Eléctrico  Secundario  Desludger  1', brand_model: 'ABB M3AA160L4', admission_date: '12-10-2010', description: '', observation: 'RODAMIENTO 6309 2Z C3     6209 2Z C3', potency: '15 HP', production_capacity: '1461', system: landes_PLANTA_DE_ACEITE, device_type: landes_abb_m3aa160l4, provider: landes_sihi_chile).save!
landes_BM11 = Device.new(serial_number: 'BM1.1', name: 'Bomba 1 alimentación estanque equalizador', brand_model: 'ABS AS0840 M26 DKS', admission_date: '12-10-2010', description: '', observation: '', potency: '', production_capacity: '', system: landes_PLANTA_DE_PRATAMIENTO, device_type: landes_abs_as0840_m26_dks, provider: landes_sihi_chile).save!
landes_BM12 = Device.new(serial_number: 'BM1.2', name: 'Bomba 2 alimentación estanque equalizador', brand_model: 'ABS AS0840 M26 DKS', admission_date: '12-10-2010', description: '', observation: '', potency: '', production_capacity: '', system: landes_PLANTA_DE_PRATAMIENTO, device_type: landes_abs_as0840_m26_dks, provider: landes_sihi_chile).save!
landes_CMR09 = Device.new(serial_number: 'C-MR.09', name: 'Motorreductor TS Elevador Pozo 1,2,3 a Rastra 1,2 ', brand_model: 'BAUER ', admission_date: '12-10-2010', description: '', observation: '', potency: '15KW', production_capacity: '1500(45-60 r', system: landes_POZOS, device_type: landes_bauer, provider: landes_sew_eurodrive).save!
landes_CMR06 = Device.new(serial_number: 'C-MR.06', name: 'Motorreductor TS Elevador Poso 4, 5 a Rastra 1 y 2', brand_model: 'BAUER ', admission_date: '12-10-2010', description: '', observation: '', potency: '15 KW', production_capacity: '1500(45-60 r', system: landes_POZOS, device_type: landes_bauer, provider: landes_sew_eurodrive).save!
landes_SBE03 = Device.new(serial_number: 'S-BE.03', name: 'Bomba Petroleo 1 de Tk Almac. a Estanque Diario', brand_model: 'Blackmer NP 2F', admission_date: '12-10-2010', description: '', observation: '', potency: '', production_capacity: '', system: landes_RED_PETROLEO_Nro_6, device_type: landes_blackmer_np_2f, provider: landes_lureye).save!
landes_SBE04 = Device.new(serial_number: 'S-BE.04', name: 'Bomba Petroleo 2 de Tk Almac. a Estanque Diario', brand_model: 'Blackmer NP 2F', admission_date: '12-10-2010', description: '', observation: '', potency: '', production_capacity: '', system: landes_RED_PETROLEO_Nro_6, device_type: landes_blackmer_np_2f, provider: landes_lureye).save!
landes_SBE01 = Device.new(serial_number: 'S-BE.01', name: 'Bomba Descarga Petroleo 1 a Estanque Almac.', brand_model: 'Blackmer NP 4F', admission_date: '12-10-2010', description: '', observation: '', potency: '', production_capacity: '', system: landes_RED_PETROLEO_Nro_6, device_type: landes_blackmer_np_4f, provider: landes_lureye).save!
landes_SBE2 = Device.new(serial_number: 'S-BE.2', name: 'Bomba Descarga  Petoleo 2 a Estanque Almacenamient', brand_model: 'Blackmer NP 4F', admission_date: '12-10-2010', description: '', observation: '', potency: '', production_capacity: '', system: landes_RED_PETROLEO_Nro_6, device_type: landes_blackmer_np_4f, provider: landes_lureye).save!
landes_SRD03 = Device.new(serial_number: 'S-RD.03', name: 'Reductor BBA. Petroleo 1 de TK almac. a TK Diario', brand_model: 'Blackmer RX 67A03', admission_date: '12-10-2010', description: '', observation: '', potency: '', production_capacity: '', system: landes_RED_PETROLEO_Nro_6, device_type: landes_blackmer_rx_67a03, provider: landes_lureye).save!
landes_SRD04 = Device.new(serial_number: 'S-RD.04', name: 'Reductor BBA. Petroleo 2 de TK almac.a TK Diario', brand_model: 'Blackmer RX 67A03', admission_date: '12-10-2010', description: '', observation: '', potency: '', production_capacity: '', system: landes_RED_PETROLEO_Nro_6, device_type: landes_blackmer_rx_67a03, provider: landes_lureye).save!
landes_HME04 = Device.new(serial_number: 'H-ME-04', name: 'Motor  Eléctrico   Ventilador  Asistencia  de  Aire  Línea  1', brand_model: 'BROOK CROMPTON L184TKE', admission_date: '12-10-2010', description: '', observation: '', potency: '5 HP', production_capacity: '1430', system: landes_LINEA_FINAL, device_type: landes_brook_crompton_l184tke, provider: landes_ferran).save!
landes_GBA01 = Device.new(serial_number: 'G-BA-01', name: 'Bomba de Agua Cola a Planta Evaporadora Conmetal N', brand_model: 'comcar 20', admission_date: '12-10-2010', description: '', observation: '', potency: '30 hp', production_capacity: '', system: landes_PLANTA_EVAPORADORA, device_type: landes_comcar_20, provider: landes_ducase).save!
landes_EMR31 = Device.new(serial_number: 'E-MR.31', name: 'Motorreductor Tornillo Salida 1 Secador  1  y  2', brand_model: 'COMPAC 2000 ', admission_date: '12-10-2010', description: '', observation: '', potency: '7.5 KW', production_capacity: '1400', system: landes_SECADORES, device_type: landes_compac_2000, provider: landes_conmetal).save!
landes_STK01 = Device.new(serial_number: 'S-TK.01', name: 'Estanque Almacenamiento Petroleo 6  N° 1', brand_model: 'Copec 90 m3', admission_date: '12-10-2010', description: '', observation: '', potency: '', production_capacity: '', system: landes_RED_PETROLEO_Nro_6, device_type: landes_copec_90_m3, provider: landes_conmetal).save!
landes_STK02 = Device.new(serial_number: 'S-TK.02', name: 'Estanque Almacenamiento Petroleo 6 N° 2', brand_model: 'Copec 90 m3', admission_date: '12-10-2010', description: '', observation: '', potency: '', production_capacity: '', system: landes_RED_PETROLEO_Nro_6, device_type: landes_copec_90_m3, provider: landes_conmetal).save!
landes_HRD01 = Device.new(serial_number: 'H-RD-01', name: 'Reductor tornillo recolector molino línea 1', brand_model: 'DODGE SCXT5256', admission_date: '12-10-2010', description: '', observation: '', potency: '', production_capacity: '', system: landes_LINEA_FINAL, device_type: landes_dodge_scxt5256, provider: landes_conmetal).save!
landes_CRD03 = Device.new(serial_number: 'C-RD.03', name: 'Reductor Tornillo Salida Poso 5', brand_model: 'FALK 1O90FC2A', admission_date: '12-10-2010', description: '', observation: '', potency: '', production_capacity: '', system: landes_POZOS, device_type: landes_falk_1o90fc2a, provider: landes_conmetal).save!
landes_BM3 = Device.new(serial_number: 'BM3', name: 'Bomba diepersión (micro burbujas)', brand_model: 'FAN SEPARATOR ', admission_date: '12-10-2010', description: '', observation: '', potency: '10 m3/h', production_capacity: '', system: landes_PLANTA_DE_PRATAMIENTO, device_type: landes_fan_separator, provider: landes_conmetal).save!
landes_HME19 = Device.new(serial_number: 'H-ME-19', name: 'Motor Bascula  Línea  3', brand_model: 'FEMCO N250', admission_date: '12-10-2010', description: '', observation: '', potency: '0.75', production_capacity: '1390', system: landes_LINEA_FINAL, device_type: landes_femco_n250, provider: landes_conmetal).save!
landes_EMR16 = Device.new(serial_number: 'E-MR.16', name: 'Motorreductor T/S alimentador Secadores 3 y 4', brand_model: 'LEROY SOMER COMPAC 200', admission_date: '12-10-2010', description: '', observation: '', potency: '15 HP', production_capacity: '1500', system: landes_SECADORES, device_type: landes_leroy_somer_compac_200, provider: landes_cleaver_brook).save!
landes_OMH02 = Device.new(serial_number: 'O-MH.02', name: 'MAQUINA DE HIELO Nº2', brand_model: 'MADEF GE 30X2', admission_date: '01-08-2004', description: '', observation: '', potency: '', production_capacity: '30,5 TON/DIA', system: landes_SALA_DE_HIELO, device_type: landes_madef_ge_30x2, provider: landes_alfa_laval_chile).save!
landes_OMH01 = Device.new(serial_number: 'O-MH.01', name: 'MAQUINA DE HIELO Nº1', brand_model: 'MADEF GG 3030', admission_date: '01-08-2000', description: '', observation: '', potency: '', production_capacity: '30 TON/DIA', system: landes_SALA_DE_HIELO, device_type: landes_madef_gg_3030, provider: landes_alfa_laval_chile).save!
landes_KVB01 = Device.new(serial_number: 'K-VB.01', name: 'Volteador Bins', brand_model: 'MMC FODEMA ', admission_date: '12-10-2010', description: '', observation: '', potency: '', production_capacity: '', system: landes_CONGELADO, device_type: landes_mmc_fodema, provider: landes_alfa_laval_chile).save!
landes_KSH01 = Device.new(serial_number: 'K-SH.01', name: 'Sistema Hidraulico Volteador  de  Bins', brand_model: 'MMC FODEMA ', admission_date: '12-10-2010', description: 'ACEITE HIDRAULICO ISO VG 68', observation: '', potency: '2.2 KW', production_capacity: '', system: landes_CONGELADO, device_type: landes_mmc_fodema, provider: landes_sihi_chile).save!
landes_KCT02 = Device.new(serial_number: 'K-CT.02', name: 'Cinta Transportadora  Alim. Seleccionador Pesca', brand_model: 'MMC FODEMA ', admission_date: '12-10-2010', description: 'CINTA MARCA SCANBELT SERIE 100, MOTOREDUCTOR ------ MARCA S I T I', observation: '', potency: '', production_capacity: '', system: landes_CONGELADO, device_type: landes_mmc_fodema, provider: landes_sihi_chile).save!
landes_KSH02 = Device.new(serial_number: 'K-SH.02', name: 'Sistema  Hidraulico  Seleccionador  Pesca', brand_model: 'MMC FODEMA ', admission_date: '12-10-2010', description: '', observation: '', potency: '', production_capacity: '', system: landes_CONGELADO, device_type: landes_mmc_fodema, provider: landes_sihi_chile).save!
landes_FBT04 = Device.new(serial_number: 'F-BT.04', name: 'Bomba Tornillo Licor de Prensa a Desludger 4 y 5', brand_model: 'Monno NE', admission_date: '12-10-2010', description: '', observation: '', potency: '', production_capacity: '', system: landes_PLANTA_DE_ACEITE, device_type: landes_monno_ne, provider: landes_sew_eurodrive).save!
landes_AHVE01 = Device.new(serial_number: 'AH-VE.01', name: 'Ventilador de extraccion', brand_model: 'MTF TS 560 M2', admission_date: '11-11-2011', description: '', observation: '', potency: '7,5 Kw', production_capacity: '2900', system: landes_LINEA_FINAL, device_type: landes_mtf_ts_560_m2, provider: landes_sew_eurodrive).save!
landes_AHVE02 = Device.new(serial_number: 'AH.VE.02', name: 'Ventilador de impulsion', brand_model: 'MTF TS 560 M2', admission_date: '11-11-2011', description: '', observation: '', potency: '7,5 Kw', production_capacity: '2900', system: landes_LINEA_FINAL, device_type: landes_mtf_ts_560_m2, provider: landes_lureye).save!
landes_AFBV01 = Device.new(serial_number: 'AF-BV.01', name: 'Bomba de vacio (Evap. rossi)', brand_model: 'Pascal Ar 3800', admission_date: '11-11-2011', description: '', observation: '', potency: '5,5 Kw', production_capacity: '228 M3/h', system: landes_PLANTAS_CONCENTRADORAS, device_type: landes_pascal_ar_3800, provider: landes_lureye).save!
landes_AEBA01 = Device.new(serial_number: 'AE-BA.01', name: 'Bomba de agua maniobra', brand_model: 'Pedrollo CP 158', admission_date: '11-11-2011', description: '', observation: '', potency: '0,75 Kw', production_capacity: 'Tk: 24 lts', system: landes_PLANTA_DE_ACEITE, device_type: landes_pedrollo_cp_158, provider: landes_lureye).save!
landes_ACMA01 = Device.new(serial_number: 'AC-MA.01', name: 'Marmita N°1', brand_model: 'Rossi inoxidable', admission_date: '11-11-2011', description: 'Agitador SF67DZ100L2 (2800-216 rpm)  3 Kw', observation: '', potency: '', production_capacity: '1500 lts', system: landes_REACTORES, device_type: landes_rossi_inoxidable, provider: landes_lureye).save!
landes_ACMA02 = Device.new(serial_number: 'AC-MA.02', name: 'Marmita N°2', brand_model: 'Rossi inoxidable', admission_date: '11-11-2011', description: 'Agitador SF67DZ100L2 (2800-216 rpm)  3 Kw', observation: '', potency: '', production_capacity: '1500 lts', system: landes_REACTORES, device_type: landes_rossi_inoxidable, provider: landes_lureye).save!
landes_ACMA03 = Device.new(serial_number: 'AC-MA.03', name: 'Marmita N°3', brand_model: 'Rossi inoxidable', admission_date: '11-11-2011', description: 'Agitador SF67DZ100L2 (2800-216 rpm)  3 Kw', observation: '', potency: '', production_capacity: '1500 lts', system: landes_REACTORES, device_type: landes_rossi_inoxidable, provider: landes_lureye).save!
landes_ACMA04 = Device.new(serial_number: 'AC-MA.04', name: 'Marmita N°4', brand_model: 'Rossi inoxidable', admission_date: '11-11-2011', description: 'Agitador SF67DZ100L2 (2800-216 rpm)  3 Kw', observation: '', potency: '', production_capacity: '1500 lts', system: landes_REACTORES, device_type: landes_rossi_inoxidable, provider: landes_ferran).save!
landes_ACMA05 = Device.new(serial_number: 'AC-MA.05', name: 'Marmita N°5', brand_model: 'Rossi inoxidable', admission_date: '11-11-2011', description: 'Agitador SF67DZ100L2 (2800-216 rpm)  3 Kw', observation: '', potency: '', production_capacity: '1500 lts', system: landes_REACTORES, device_type: landes_rossi_inoxidable, provider: landes_ducase).save!
landes_ACMA06 = Device.new(serial_number: 'AC-MA.06', name: 'Marmita N°6', brand_model: 'Rossi inoxidable', admission_date: '11-11-2011', description: 'Agitador SF67DZ100L2 (2800-216 rpm)  3 Kw', observation: '', potency: '', production_capacity: '1500 lts', system: landes_REACTORES, device_type: landes_rossi_inoxidable, provider: landes_conmetal).save!
landes_ACMA07 = Device.new(serial_number: 'AC-MA.07', name: 'Marmita N°7', brand_model: 'Rossi inoxidable', admission_date: '11-11-2011', description: 'Agitador SF67DZ100L2 (2800-216 rpm)  3 Kw', observation: '', potency: '', production_capacity: '1500 lts', system: landes_REACTORES, device_type: landes_rossi_inoxidable, provider: landes_conmetal).save!
landes_ACMA08 = Device.new(serial_number: 'AC-MA.08', name: 'Marmita N°8', brand_model: 'Rossi inoxidable', admission_date: '11-11-2011', description: 'Agitador SF67DZ100L2 (2800-216 rpm)  3 Kw', observation: '', potency: '', production_capacity: '1500 lts', system: landes_REACTORES, device_type: landes_rossi_inoxidable, provider: landes_conmetal).save!
landes_ACTK01 = Device.new(serial_number: 'AC-TK.01', name: 'Estanque madre', brand_model: 'Rossi inoxidable', admission_date: '11-11-2011', description: 'Agitador SF67DRS112 M4 (1450-82 rpm)  //  Bomba: nemo Ne-50 ; motor: RF47DZ 100 LS4 ( 1410-202 rpm) 2,2 Kw', observation: '', potency: '', production_capacity: '2500lt', system: landes_REACTORES, device_type: landes_rossi_inoxidable, provider: landes_conmetal).save!
landes_ACTK02 = Device.new(serial_number: 'AC-TK.02', name: 'Estanque E-3', brand_model: 'Rossi inoxidable', admission_date: '11-11-2011', description: 'Agitador SF67DRS112 M4 (1450-82 rpm)  //  Bomba: nemo Ne-50 ; motor: RF47DZ 100 LS4 ( 1410-202 rpm) 2,2 Kw', observation: '', potency: '', production_capacity: '1500 lts', system: landes_REACTORES, device_type: landes_rossi_inoxidable, provider: landes_conmetal).save!
landes_AFTK01 = Device.new(serial_number: 'AF-TK.01', name: 'Estanque alimentador (evap.rossi)', brand_model: 'Rossi inoxidable', admission_date: '11-11-2011', description: 'Agitador RF DZ100L2; 4 Kw; 2880 - 242 rpm', observation: '', potency: '', production_capacity: '', system: landes_PLANTAS_CONCENTRADORAS, device_type: landes_rossi_inoxidable, provider: landes_conmetal).save!
landes_AGQM01 = Device.new(serial_number: 'AG-QM.01', name: 'Quemador secador spray', brand_model: 'Saacke Pag 25C2', admission_date: '11-11-2011', description: 'Capacidad 1.000.000 Kcal/h', observation: '', potency: '', production_capacity: '', system: landes_SECADORES, device_type: landes_saacke_pag_25c2, provider: landes_conmetal).save!
landes_IME06 = Device.new(serial_number: 'I-ME.06', name: 'Motor Electrico BBA Imbil Ril Clarificado 1 Essbio', brand_model: 'Siemens 160 M', admission_date: '12-10-2010', description: '', observation: '', potency: '11  Kw', production_capacity: '1450', system: landes_PLANTA_DE_PRATAMIENTO, device_type: landes_siemens_160_m, provider: landes_cleaver_brook).save!
landes_IME07 = Device.new(serial_number: 'I-ME.07', name: 'Motor Electrico BBA Imbil Ril Clarificado 2 Essbio', brand_model: 'Siemens 160 M', admission_date: '12-10-2010', description: '', observation: '', potency: '11  Kw', production_capacity: '1450', system: landes_PLANTA_DE_PRATAMIENTO, device_type: landes_siemens_160_m, provider: landes_alfa_laval_chile).save!
landes_FME33 = Device.new(serial_number: 'F-ME.33', name: 'Motor Bba Agua Cola 2  Pta Aceite a Pta Evaporador', brand_model: 'SIHI 160M', admission_date: '12-10-2010', description: '', observation: '', potency: '15 HP', production_capacity: '1460', system: landes_PLANTA_DE_ACEITE, device_type: landes_sihi_160m, provider: landes_alfa_laval_chile).save!
landes_FBD01 = Device.new(serial_number: 'F-BD.01', name: 'Bomba Condensado 1', brand_model: 'SPENCE 3X2', admission_date: '12-10-2010', description: '', observation: '', potency: '', production_capacity: '', system: landes_PLANTA_DE_ACEITE, device_type: landes_spence_3x2, provider: landes_alfa_laval_chile).save!
landes_ADTE01 = Device.new(serial_number: 'AD-TE.01', name: 'Termo espira', brand_model: 'Termo equipo con serpentin', admission_date: '11-11-2011', description: 'Bomba salida: waukesha 180 - U2 ; motor: R77DX 132, 1450/ 187 (7,5Kw)', observation: '', potency: '', production_capacity: '', system: landes_PASTEURIZADO, device_type: landes_termo_equipo_con_serpentin, provider: landes_conmetal).save!
landes_ADTK01 = Device.new(serial_number: 'AD-TK.01', name: 'Estanque UHT', brand_model: 'Termo equipos ', admission_date: '11-11-2011', description: 'Bomba salida: waukesha 2085 (18,5 Kw; 2900rpm)', observation: '', potency: '', production_capacity: '', system: landes_PASTEURIZADO, device_type: landes_termo_equipos, provider: landes_conmetal).save!
landes_ADUH01 = Device.new(serial_number: 'AD-UH.01', name: 'UHT', brand_model: 'Termo equipos ', admission_date: '11-11-2011', description: 'Agitador RF60 DZ 100 L2 (4 Kw; 2840/242); Bomba alimentacion: waukesha 2045 (2,2 Kw; 2810)', observation: '', potency: '', production_capacity: '', system: landes_PASTEURIZADO, device_type: landes_termo_equipos, provider: landes_conmetal).save!
landes_EME20 = Device.new(serial_number: 'E-ME.20', name: 'Motor  Eléctrico Chancho Limpiador de harina 2', brand_model: 'VEM 160L6', admission_date: '12-10-2010', description: '', observation: '', potency: '15 HP', production_capacity: '965', system: landes_SECADORES, device_type: landes_vem_160l6, provider: landes_cleaver_brook).save!
landes_AGBC01 = Device.new(serial_number: 'AG-BC.01', name: 'Bomba centrifuga', brand_model: 'Waukesha Inoxidable', admission_date: '11-11-2011', description: '', observation: '', potency: '2,2 Kw', production_capacity: '2840', system: landes_SECADORES, device_type: landes_waukesha_inoxidable, provider: landes_alfa_laval_chile).save!
landes_CME04 = Device.new(serial_number: 'C-ME.04', name: 'Motor Electrico  Bomba  Agua Sangre Rastra 1 y 2', brand_model: 'WEG 90 S', admission_date: '12-10-2010', description: '', observation: '', potency: '2  HP', production_capacity: '2900', system: landes_POZOS, device_type: landes_weg_90_s, provider: landes_alfa_laval_chile).save!
landes_HPA01 = Device.new(serial_number: 'H-PA-01', name: 'Planta  Antioxidante  Línea  1', brand_model: 'ZENITH PUMMPS', admission_date: '12-10-2010', description: '', observation: '', potency: '5 HP', production_capacity: '', system: landes_LINEA_FINAL, device_type: landes_zenith_pummps, provider: landes_alfa_laval_chile).save!
