class ExpensesController < ApplicationController
  before_action :load_expense, only: %i[edit update destroy]

  def index
    @expenses = Expense.all
  end

  def edit; end

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

  def update
    if @expense.update(expense_params)
      redirect_to expenses_path
    else
      render 'edit'
    end
  end

  def destroy
    if @expense.destroy
      redirect_to expenses_path
    else
      render 'edit'
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:date, :description, :value)
  end

  def load_expense
    @expense = Expense.find(params[:id])
  end
end
