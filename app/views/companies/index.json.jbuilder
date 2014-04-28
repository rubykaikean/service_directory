json.array!(@companies) do |company|
  json.extract! company, :id, :name, :address, :services_offered, :brand_offered, :licenses, :phones_number, :description, :category_id, :location_id, :user_id
  json.url company_url(company, format: :json)
end
