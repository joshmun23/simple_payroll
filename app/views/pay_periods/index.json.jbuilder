json.array!(@pay_periods) do |pay_period|
  json.extract! pay_period, :id, :start_date, :end_date, :total_hours_worked, :gross_wages, :total_deductions, :net_wages, :name, :employee_id
  json.url pay_period_url(pay_period, format: :json)
end
