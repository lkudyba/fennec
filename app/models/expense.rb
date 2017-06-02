class Expense < ApplicationRecord
  belongs_to :category

  validates_presence_of :date, :description, :value, :category
end
