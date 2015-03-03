json.array!(@mincroposts) do |mincropost|
  json.extract! mincropost, :id, :content, :user_id
  json.url mincropost_url(mincropost, format: :json)
end
