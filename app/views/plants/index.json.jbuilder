json.data do
  json.array! @plants, partial: 'plant', as: :plant
end
