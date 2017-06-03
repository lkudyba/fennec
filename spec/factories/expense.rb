FactoryGirl.define do
  factory :expense do
    date        Date.parse('2017-06-03')
    value       1.34
    description 'Expense description'
  end
end
