json.array!(@datens) do |daten|
  json.extract! daten, :id, :was, :standort, :wohin, :datum
  json.url daten_url(daten, format: :json)
end
