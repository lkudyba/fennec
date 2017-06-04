class ExpensesController < ApplicationController
  def index
    @expenses = Expense.all
  end

  def new
    @expense = Expense.new(date: Date.today)
  end

  def create
    @expense = Expense.new(expense_params)

    if @expense.save
      redirect_to expenses_path
    else
      render 'new'
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:date, :description, :value)
  end
end
