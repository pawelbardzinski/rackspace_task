json.array!(@records) do |record|
  json.extract! record, :pet_name, :pet_type, :breed, :age, :weight, :last_visit_date
  json.url record_url(record, format: :json)
end
