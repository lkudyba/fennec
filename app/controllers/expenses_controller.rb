class ExpensesController < ApplicationController
  def index
    @expenses = Expense.with_category_names.limit(50)
  end

  def new
    @new_expense = Expense.new
  end

  def create
    @expense      = Expense.new(expense_params)
    @expense.date = Date.today if @expense.date.blank?

    @expense.save
    redirect_to(expenses_path)
  end

  private

  def expense_params
    params.require(:expense).permit(:description, :value, :category_id)
  end
end
