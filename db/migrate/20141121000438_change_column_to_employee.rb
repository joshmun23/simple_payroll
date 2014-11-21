class ChangeColumnToEmployee < ActiveRecord::Migration
  def change
    change_column :employees, :married, :string
    rename_column :employees, :married, :marital_status
  end
end
