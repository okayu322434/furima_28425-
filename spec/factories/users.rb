FactoryBot.define do

  factory :user do
    nickname              {"tarou"}
    email                 {Faker::Internet.free_email}
    password              {"1234567"}
    encrypted_password    {"1234567"}
    first_name           {"山田"}
    first_name_kana      {"ヤマダ"}
    last_name            {"太郎"}
    last_name_kana       {"タロウ"}
    birthday             {"2000-01-01"}
  end
end