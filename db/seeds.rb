@user = User.create(email: "test2@test.com", 
    password: "asdasd", 
    password_confirmation: "asdasd", 
    first_name: "Jhon", 
    last_name: "Snow",
    phone: "3057519787")

puts "1 user created"

AdminUser.create(email: "admin2@test.com", 
    password: "asdasd", 
    password_confirmation: "asdasd", 
    first_name: "Admin", 
    last_name: "Sr",
    phone: "3057519787")

puts "1 Admin User created"

100.times do |posts|
    Post.create!(date: Date.today, rationale: "#{posts} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"

AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 20.days))

puts "100 audit logs have been created"