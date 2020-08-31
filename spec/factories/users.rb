FactoryGirl.define do
    sequence :email do |n|
        "test#{n}@example.com"
    end
    factory :user do
        first_name 'Jhon'
        last_name 'Snow'
        email { generate :email }
        password 'asdasd'
        password_confirmation 'asdasd'
    end

    factory :admin_user, class: "AdminUser" do
        first_name 'admin'
        last_name 'user'
        email { generate :email }
        password 'admin'
        password_confirmation 'admin'
    end
end