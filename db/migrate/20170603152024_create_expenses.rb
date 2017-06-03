class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.date    :date,        null: false
      t.decimal :value,       null: false, precision: 8, scale: 2
      t.string  :description, null: false

      t.timestamps
    end
  end
end
