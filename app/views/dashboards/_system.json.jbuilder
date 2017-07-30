json.extract! system, :id, :created_at, :updated_at
json.link do
  json.id system.id
  json.name system.name
  json.url "#"
end
json.action do
  json.edit_url "#"
  json.destroy_url "#"
end
json.DT_RowId "system-#{system.id}"
