FactoryGirl.define do
  factory :card do
    original_text 'cat'
    translated_text 'кот' 
    user
  end

end
FactoryGirl.define do
  factory :user do
    login 'Test'
    password 'testpass'
  end
end