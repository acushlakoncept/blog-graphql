# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
  {
    first_name: "John",
    last_name: "Doe",
    address: "123 Main Street",
    postcode: "AB12 3CD",
    city: "London",
    country: "UK"
  },
  {
    first_name: "Jane",
    last_name: "Doe",
    address: "24 High Street",
    postcode: "AB12 45CD",
    city: "New York",
    country: "US"
  }
])

posts = Post.create!([
  {
    body: "This is a post",
    user: users.first
  },
  {
    body: "This is another post",
    user: users.first
  },
  {
    body: "This is yet another post",
    user: users.last
  }
])

Comment.create!([
  {
    body: "This is a comment",
    post: posts.first,
    user: users.first
  },
  {
    body: "This is another comment",
    post: posts.first,
    user: users.last
  }
])