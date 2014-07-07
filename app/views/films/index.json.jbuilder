json.array!(@films) do |film|
  json.extract! film, :id, :title, :film_summary, :film_year, :is_released_netflix, :is_released_amazon_stream, :is_released_disc, :netlifx_link, :amazon_stream_link, :disc_link, :user_id
  json.url film_url(film, format: :json)
end
