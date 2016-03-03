json.array!(@weights) do |weight|
  json.extract! weight, :id, :weight, :date_weighed
  json.url weight_url(weight, format: :json)
end
