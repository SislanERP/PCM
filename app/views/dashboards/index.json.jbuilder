if (@plants.present? and not @systems.present?)
  json.data do
    json.array! @plants, partial: 'plant', as: :plant
  end
end
if @systems.present?
  json.data do
    json.array! @systems, partial: 'system', as: :system
  end
end
