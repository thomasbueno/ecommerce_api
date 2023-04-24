FactoryBot.define do
  factory :system_requirement do
    sequence(:name) { |index| "Basic #{index}" }
    operational_system { Faker::Computer.os }
    storage { '120gb' }
    processor { 'AMD Ryzen 5 3600' }
    memory { '16gb' }
    video_board { 'GTX 1060 3GB' }
  end
end
