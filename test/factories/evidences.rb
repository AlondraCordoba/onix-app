FactoryBot.define do
  factory :evidence do
    title { "MyString" }
    order { "MyString" }
    status { 1 }
    distributor { "MyString" }
    description { "MyText" }
    content { nil }
  end
end
