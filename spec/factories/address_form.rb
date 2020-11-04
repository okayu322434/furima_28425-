FactoryBot.define do
  factory :address_form do
    postcode          {"123-4567"}
    prefecture_id     {"1"}
    city              {"横浜駅"}
    address           {"1-2-3"}
    buildeing         {"test"}
    phone_number      {"12345678900"}
    token             {"tok_abcdefghijk00000000000000000"}

  end
end
