json.data do
  json.array! @devices, partial: 'devices/device', as: :device
end
