class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.date :date
      t.text :description
      t.decimal :value
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
