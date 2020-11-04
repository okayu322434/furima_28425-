FactoryBot.define do
  factory :order do
    order             {"test"}
    postcode          {"123-4567"}
    prefecture_id     {"1"}
    city              {"1"}
    address           {"1"}
    buildeing         {"test"}
    phone_number      {"1"}
    token             {"tok_abcdefghijk00000000000000000"}

  end
end

