json.extract! comment, :id, :body, :user_id, :discussion_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
