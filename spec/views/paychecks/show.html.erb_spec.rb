require 'rails_helper'

RSpec.describe "paychecks/show", :type => :view do
  before(:each) do
    @paycheck = assign(:paycheck, Paycheck.create!(
      :employee_id => 1,
      :name => "Name",
      :paycheck => "Paycheck",
      :total_hours_worked => 1.5,
      :gross_wages => 1.5,
      :total_deductions => 1.5,
      :net_wages => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Paycheck/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
  end
end
