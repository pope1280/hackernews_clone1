require 'faker'

@users = []

5.times do 
  @users << User.create(name: Faker::Name.name, password: "123")
end

@users.each do |add|
  add.posts << Post.create(title: Faker::Name.first_name, source: Faker::Internet.url)
end

@comments = []
10.times do 
  @comments << Comment.create(body: Faker::Lorem.sentence)
end

@comments.each do |push|
  @users.find(rand(5) + 1).first.comments << push
  @users.find(rand(5) + 1).first.posts.first.comments << push
end
