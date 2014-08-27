json.array!(@bootstrapped_posts) do |bootstrapped_post|
  json.extract! bootstrapped_post, :id, :title, :body, :published
  json.url bootstrapped_post_url(bootstrapped_post, format: :json)
end
