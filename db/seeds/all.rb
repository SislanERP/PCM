Task.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE tasks_id_seq RESTART WITH 1")

MasterMaintenancePlan.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE master_maintenance_plans_id_seq RESTART WITH 1")

TaskType.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE task_types_id_seq RESTART WITH 1")

DeviceSupply.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE device_supplies_id_seq RESTART WITH 1")

Supply.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE supplies_id_seq RESTART WITH 1")

InstrumentType.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE instrument_types_id_seq RESTART WITH 1")

Item.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE items_id_seq RESTART WITH 1")

Device.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE devices_id_seq RESTART WITH 1")

Provider.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE providers_id_seq RESTART WITH 1")

DeviceType.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE device_types_id_seq RESTART WITH 1")

System.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE systems_id_seq RESTART WITH 1")

Plant.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE plants_id_seq RESTART WITH 1")

Branch.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE branches_id_seq RESTART WITH 1")

User.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE users_id_seq RESTART WITH 1")

Company.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE companies_id_seq RESTART WITH 1")

Role.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE roles_id_seq RESTART WITH 1")

AdminUser.destroy_all
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
