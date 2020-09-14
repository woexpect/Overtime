@user = User.create(email: "test2@test.com", password: "asdasd", password_confirmation: "asdasd", first_name: "Jhon", last_name: "Snow")

puts "1 user created"

AdminUser.create(email: "admin2@test.com", password: "asdasd", password_confirmation: "asdasd", first_name: "Admin", last_name: "Sr")

puts "1 Admin User created"

100.times do |posts|
    Post.create!(date: Date.today, rationale: "#{posts} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"