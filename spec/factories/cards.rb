FactoryGirl.define do
  factory :card do
    original_text 'cat'
    translated_text 'кот'
  end
    factory :user do
    login 'test'
    password 'tess'
  end
end