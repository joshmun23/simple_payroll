json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :wage, :married, :fica, :fwh, :swh, :claims
  json.url employee_url(employee, format: :json)
end
