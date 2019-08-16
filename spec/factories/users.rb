FactoryBot.define do
  factory :user do
      email { "testing@gmail.com" }
      name {"user"}
      password { "password"} 
      password_confirmation { "password" }
  end
end
