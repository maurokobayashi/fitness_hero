json.array!(@personals) do |personal|
  json.extract! personal, :id, :first_name, :last_name, :birthdate, :email, :mobile, :cref, :gender, :avatar, :status, :user_id
  json.url personal_url(personal, format: :json)
end
