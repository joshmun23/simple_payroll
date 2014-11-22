class DropTablePayPeriod < ActiveRecord::Migration
  def up
    drop_table :pay_periods
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
