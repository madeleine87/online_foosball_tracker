json.array!(@matches) do |match|
  json.extract! match, :id, :date, :resultA, :resultB
  json.url match_url(match, format: :json)
end
