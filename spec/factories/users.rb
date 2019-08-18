FactoryBot.define do
  factory :user do
      id {1}
      email { "testing@gmail.com" }
      name {"user"}
      password { "password"} 
      password_confirmation { "password" }
  end
end
