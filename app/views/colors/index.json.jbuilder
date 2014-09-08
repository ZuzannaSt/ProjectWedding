json.array!(@colors) do |color|
  json.extract! color, :id, :color_name, :invitation_id
  json.url color_url(color, format: :json)
end
