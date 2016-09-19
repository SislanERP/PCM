json.extract! device_type, :id, :created_at, :updated_at
json.link do
  json.id device_type.id
  json.name device_type.name
  json.url company_device_types_path(device_type.company)
end
json.action do
  json.edit_url edit_company_device_type_path(device_type.company, device_type)
  json.destroy_url company_device_type_path(device_type.company, device_type)
end
json.DT_RowId "device_type-#{device_type.id}"
