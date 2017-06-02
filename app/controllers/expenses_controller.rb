class ExpensesController < ApplicationController
  def index
    @expenses = Expense.with_category_names.limit(50)
  end
end
