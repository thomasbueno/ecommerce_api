FactoryBot.define do
  factory :category do
    sequence(:name) { |index| "Category #{index}" }
  end
end
