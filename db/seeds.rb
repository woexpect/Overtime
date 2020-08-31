@user = User.create(email: "test2@test.com", password: "asdasd", password_confirmation: "asdasd", first_name: "Jhon", last_name: "Snow")

puts "1 user created"

100.times do |posts|
    Post.create!(date: Date.today, rationale: "#{posts} rationale content", user_id: @user.id)
end

puts "100 Posts have been created"