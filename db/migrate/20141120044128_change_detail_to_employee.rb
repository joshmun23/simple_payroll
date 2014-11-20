class ChangeDetailToEmployee < ActiveRecord::Migration
  def change
    rename_column :employees, :marital_status, :married
  end
end
