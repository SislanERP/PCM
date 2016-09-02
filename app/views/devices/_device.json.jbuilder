json.extract! device, :id, :serial_number, :name, :brand_model, :state, :created_at, :updated_at
json.admission_date device.admission_date.to_s(:year_and_month)
json.plant device.plant.name
json.system device.system.name
json.branch device.branch.name
json.provider device.provider.company_name
json.DT_RowId device.id
