json.extract! news, :id, :heading, :message, :icon, :created_at, :updated_at
json.url news_url(news, format: :json)
