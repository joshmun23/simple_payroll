require 'rails_helper'

RSpec.describe "pay_periods/index", :type => :view do
  before(:each) do
    assign(:pay_periods, [
      PayPeriod.create!(
        :total_hours_worked => 1.5,
        :gross_wages => 1.5,
        :total_deductions => 1.5,
        :net_wages => 1.5,
        :name => "Name",
        :employee_id => 1
      ),
      PayPeriod.create!(
        :total_hours_worked => 1.5,
        :gross_wages => 1.5,
        :total_deductions => 1.5,
        :net_wages => 1.5,
        :name => "Name",
        :employee_id => 1
      )
    ])
  end

  it "renders a list of pay_periods" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
