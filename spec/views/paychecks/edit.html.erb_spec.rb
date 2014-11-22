require 'rails_helper'

RSpec.describe "paychecks/edit", :type => :view do
  before(:each) do
    @paycheck = assign(:paycheck, Paycheck.create!(
      :employee_id => 1,
      :name => "MyString",
      :paycheck => "MyString",
      :total_hours_worked => 1.5,
      :gross_wages => 1.5,
      :total_deductions => 1.5,
      :net_wages => 1.5
    ))
  end

  it "renders the edit paycheck form" do
    render

    assert_select "form[action=?][method=?]", paycheck_path(@paycheck), "post" do

      assert_select "input#paycheck_employee_id[name=?]", "paycheck[employee_id]"

      assert_select "input#paycheck_name[name=?]", "paycheck[name]"

      assert_select "input#paycheck_paycheck[name=?]", "paycheck[paycheck]"

      assert_select "input#paycheck_total_hours_worked[name=?]", "paycheck[total_hours_worked]"

      assert_select "input#paycheck_gross_wages[name=?]", "paycheck[gross_wages]"

      assert_select "input#paycheck_total_deductions[name=?]", "paycheck[total_deductions]"

      assert_select "input#paycheck_net_wages[name=?]", "paycheck[net_wages]"
    end
  end
end
