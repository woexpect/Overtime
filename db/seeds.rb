100.times do |posts|
    Post.create!(date: Date.today, rationale: "#{posts} rationale content")
end

puts "100 Posts have been created"