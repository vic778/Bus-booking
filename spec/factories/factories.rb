FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    phone_number { Faker::PhoneNumber.phone_number }
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    password_confirmation { password }
  end

  factory :agence do
    name { "MyString" }
    register_number { 1 }
    road { "MyString" }
    avenue { "MyString" }
  end

    factory :bus do
    name { "MyString" }
    model { "MyString" }
    boarding { "MyString" }
    destination { "MyString" }
    no_of_seats { "MyString" }
    agence { nil }
  end
end
