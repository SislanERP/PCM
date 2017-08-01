json.extract! plant, :id, :created_at, :updated_at
json.link do
  json.id plant.id
  json.name plant.name
  json.url "#"
end
json.action do
  json.edit_url "#"
  json.destroy_url "#"
end
json.DT_RowId "plant-#{plant.id}"
