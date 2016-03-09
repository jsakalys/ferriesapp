json.array!(@ferries) do |ferry|
  json.extract! ferry, :id, :name
  json.url ferry_url(ferry, format: :json)
end
