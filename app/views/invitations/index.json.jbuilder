json.array!(@invitations) do |invitation|
  json.extract! invitation, :id, :name, :collection_id
  json.url invitation_url(invitation, format: :json)
end
