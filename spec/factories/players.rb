FactoryGirl.define do
  factory :player_A , class: Player do
    sequence(:email) { |n| "A#{n}@example.com" }
    password "password"
    sequence(:first_name) { |n| "first_nameA#{n}" }
    sequence(:last_name) { |n| "last_nameA#{n}" }
  end

  factory :player_B , class: Player do
    sequence(:email) { |n| "B#{n}@example.com" }
    password "password"
    sequence(:first_name) { |n| "first_nameB#{n}" }
    sequence(:last_name) { |n| "last_nameB#{n}" }
  end

  factory :player_C , class: Player do
    sequence(:email) { |n| "C#{n}@example.com" }
    password "password"
    sequence(:first_name) { |n| "first_nameC#{n}" }
    sequence(:last_name) { |n| "last_nameC#{n}" }
  end
end
