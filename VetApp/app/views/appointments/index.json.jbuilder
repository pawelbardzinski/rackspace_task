json.array!(@appointments) do |appointment|
  json.extract! appointment, :date_of_visit, :pet, :customer, :appointment_reminder, :visit_reason
  json.url appointment_url(appointment, format: :json)
end
