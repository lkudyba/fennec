module ExpensesHelper
  def category_options
    Category.all.to_a.map { |c| [c.name, c.id] }
  end
end
