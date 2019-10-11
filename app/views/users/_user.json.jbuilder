json.extract! user, :id, :first_name, :last_name, :emai, :password_digest, :is_teacher, :created_at, :updated_at
json.url user_url(user, format: :json)
