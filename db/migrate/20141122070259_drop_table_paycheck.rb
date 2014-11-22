class DropTablePaycheck < ActiveRecord::Migration
  def up
    drop_table :paychecks
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
