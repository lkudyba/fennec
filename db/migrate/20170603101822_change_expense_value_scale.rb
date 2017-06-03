class ChangeExpenseValueScale < ActiveRecord::Migration[5.1]
  def up
    change_column :expenses, :value, :decimal, precision: 10, scale: 2
  end

  def down
    change_column :expenses, :value, :decimal
  end
end
