json.array!(@services) do |service|
  json.extract! service, :id, :name, :company_id, :service_type, :service_period, :service_location, :delivery_time, :description
  json.url service_url(service, format: :json)
end
