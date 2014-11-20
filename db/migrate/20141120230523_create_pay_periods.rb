class CreatePayPeriods < ActiveRecord::Migration
  def change
    create_table :pay_periods do |t|
      t.date :start_date
      t.date :end_date
      t.float :total_hours_worked
      t.float :gross_wages
      t.float :total_deductions
      t.float :net_wages
      t.string :name
      t.integer :employee_id

      t.timestamps
    end
  end
end
