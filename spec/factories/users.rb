FactoryGirl.define do
  factory :user do |x|
    name     "John Figueiredo #{x}"
    email    "john@johnfigueiredo.com"
    password "jfig3333"
    password_confirmation "jfig3333"
  end
end