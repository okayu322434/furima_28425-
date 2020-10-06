FactoryBot.define do

  factory :good do
    association :user
    name                {"test"}
    comment             {"test"}
    price               {"300"}
    category_id         {"1"}
    status_id           {"1"}
    delivery_id         {"1"}
    area_id             {"1"}
    shippingdate_id     {"1"}
  end
end
