# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :asset do
    asset_file_name "MyString"
    asset_content_type "MyString"
    asset_file_size 1
    asset_updated_at "2012-08-26 13:56:35"
    item_id 1
  end
end
