# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "jschmoe@whereever.com"
    password "passpass"
  end
end
