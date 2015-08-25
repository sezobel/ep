json.array!(@ideas) do |idea|
  json.extract! idea, :id, :profile_id, :project_name, :project_description, :user_id, :business_plan
  json.url idea_url(idea, format: :json)
end
