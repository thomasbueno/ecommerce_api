FactoryBot.define do
  factory :game do
    mode { %i[pvp pve both].sample }
    release_date { '2023-04-23 23:02:41' }
    developer { Faker::Company.name }
    system_requirement
  end
end
