json.array!(@steps_takens) do |steps_taken|
  json.extract! steps_taken, :id, :steps_taken, :date_walked
  json.url steps_taken_url(steps_taken, format: :json)
end
