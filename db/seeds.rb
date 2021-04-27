# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# coding: utf-8
Genre.create(name: 'ケーキ')
Genre.create(name: 'プリン')
Genre.create(name: '焼き菓子')
Genre.create(name: 'キャンディ')

# Admin.create(email: 'hoge@hoge', encrypted_password: 'g4g4g4')

Admin.find_or_create_by(id: 1) do |admin|
 admin.email = "hoge@hoge"
 admin.password = "g4g4g4"
end