json.extract! course, :id, :name, :description, :nrc, :created_at, :updated_at
json.url course_url(course, format: :json)
