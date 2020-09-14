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
        phone "3057519787"
    end

    factory :admin_user, class: "AdminUser" do
        first_name 'admin'
        last_name 'user'
        email { generate :email }
        password 'admin123'
        password_confirmation 'admin123'
        phone "3057519787"
    end

    factory :non_authorized_user, class: "User" do
        first_name 'Non'
        last_name 'Authorized'
        email { generate :email }
        password 'asdasd'
        password_confirmation 'asdasd'
        phone "3057519787"
    end
end