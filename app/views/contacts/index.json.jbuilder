json.array!(@contacts) do |contact|
  json.extract! contact, :id, :profile_id, :user_id, :name, :number, :email, :city, :state, :about_, :notes, :tags
  json.url contact_url(contact, format: :json)
end
