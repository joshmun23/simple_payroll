require 'rails_helper'

RSpec.describe "pay_periods/show", :type => :view do
  before(:each) do
    @pay_period = assign(:pay_period, PayPeriod.create!(
      :total_hours_worked => 1.5,
      :gross_wages => 1.5,
      :total_deductions => 1.5,
      :net_wages => 1.5,
      :name => "Name",
      :employee_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
  end
end
