FactoryBot.define do
  factory :product do
    sequence(:name) { |index| "Product #{index}" }
    description { Faker::Lorem.paragraph }
    price { Faker::Commerce.price(range: 10.0..400.0) }

    after :build do |product|
      product.productable = create(:game)
    end
  end
end
