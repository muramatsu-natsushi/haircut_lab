# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new(:name => "root", :email => "root@gmail.com", :password => "aaaaaa", :is_admin => true)
user.save!
3.times do |i|
user.articles.create!(title: "bbb#{i}", image_path: 'assets/topimg1.JPG')
end

10.times do |i|
  user = User.new(:name => "aaa#{i}" , :email => "aaa#{i}@gmail.com", :password => "aaaaaa")
  user.save!
  user.articles.create!(title: "a#{i}a", image_path: 'assets/images/topimg2.JPG')
end
