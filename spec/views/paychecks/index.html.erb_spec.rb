require 'rails_helper'

RSpec.describe "paychecks/index", :type => :view do
  before(:each) do
    assign(:paychecks, [
      Paycheck.create!(
        :employee_id => 1,
        :name => "Name",
        :paycheck => "Paycheck",
        :total_hours_worked => 1.5,
        :gross_wages => 1.5,
        :total_deductions => 1.5,
        :net_wages => 1.5
      ),
      Paycheck.create!(
        :employee_id => 1,
        :name => "Name",
        :paycheck => "Paycheck",
        :total_hours_worked => 1.5,
        :gross_wages => 1.5,
        :total_deductions => 1.5,
        :net_wages => 1.5
      )
    ])
  end

  it "renders a list of paychecks" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Paycheck".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
