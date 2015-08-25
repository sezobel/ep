json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :number, :email, :user_id, :city, :state, :zip_code, :university, :degree_of_study, :year, :current_employer, :title, :duties, :user_id
  json.url profile_url(profile, format: :json)
end
