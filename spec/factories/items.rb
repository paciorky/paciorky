# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    sequence(:name) { |n| "Item #{n}" }
    description Forgery::LoremIpsum.paragraph
    price Forgery(:monetary).money(:min => 1, :max => 100)
    category { FactoryGirl.create :category }
  end
end
