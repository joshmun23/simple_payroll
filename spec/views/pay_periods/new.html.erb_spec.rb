require 'rails_helper'

RSpec.describe "pay_periods/new", :type => :view do
  before(:each) do
    assign(:pay_period, PayPeriod.new(
      :total_hours_worked => 1.5,
      :gross_wages => 1.5,
      :total_deductions => 1.5,
      :net_wages => 1.5,
      :name => "MyString",
      :employee_id => 1
    ))
  end

  it "renders new pay_period form" do
    render

    assert_select "form[action=?][method=?]", pay_periods_path, "post" do

      assert_select "input#pay_period_total_hours_worked[name=?]", "pay_period[total_hours_worked]"

      assert_select "input#pay_period_gross_wages[name=?]", "pay_period[gross_wages]"

      assert_select "input#pay_period_total_deductions[name=?]", "pay_period[total_deductions]"

      assert_select "input#pay_period_net_wages[name=?]", "pay_period[net_wages]"

      assert_select "input#pay_period_name[name=?]", "pay_period[name]"

      assert_select "input#pay_period_employee_id[name=?]", "pay_period[employee_id]"
    end
  end
end
