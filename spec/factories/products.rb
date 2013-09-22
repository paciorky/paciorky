FactoryGirl.define do
  factory :product do
    sequence(:name) { |n| "Product #{n}" }
    description Forgery::LoremIpsum.paragraph
    price Forgery(:monetary).money(:min => 1, :max => 100)
    category { FactoryGirl.create :category }

  end
end
