FactoryBot.define do
  factory :item do
    association :user

    name { 'テスト' }
    description { 'テスト' }
    category_id { '1' }
    item_status_id { '1' }
    shipping_cost_id { '1' }
    prefecture_id { '1' }
    shipping_date_id { '1' }
    price { '500' }

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
