json.array!(@doctors) do |doctor|
  json.extract! doctor, :name, :address, :city, :state, :zip, :school_degree_from, :years_of_experience
  json.url doctor_url(doctor, format: :json)
end
