# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: "ducnam",
    email: "ducnam080297@gmail.com",
    password: "123123",
    birthday: "05/07/1997",
    sex: "nam",
    picture: File.open(Rails.root + "app/assets/images/BEO_1928 - Copy - Copy.JPG"),
    password_confirmation: "123123")

User.create!(name: "dung",
    email: "dung080297@gmail.com",
    password: "123123",
    birthday: "05/07/1997",
    sex: "nu",
    picture: File.open(Rails.root + "app/assets/images/02_01_slide_nature.jpg"),
    password_confirmation: "123123")

User.create!(name: "vu duc nam",
    email: "ducnam0807@gmail.com",
    password: "123123",
    birthday: "05/07/1997",
    sex: "nu",
    picture: File.open(Rails.root + "app/assets/images/Screenshot from 2018-12-18 15-09-48.png"),
    password_confirmation: "123123")
