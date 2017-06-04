module ExpensesHelper
  def expenses_sum(expenses)
    expenses.map(&:value).sum
  end
end
