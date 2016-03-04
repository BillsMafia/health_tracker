json.array!(@calories_consumeds) do |c|
  json.extract! c, :id, :calories_consumed, :date_consumed
  json.url calories_consumed_url(c, format: :json)
end
