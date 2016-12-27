json.extract! doodle, :id, :canvas, :title, :rating, :user_id, :created_at, :updated_at
json.url doodle_url(doodle, format: :json)