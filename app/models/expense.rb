class Expense < ApplicationRecord
  validates_presence_of     :date, :value, :description
  validates_numericality_of :value, greater_than: 0
end
