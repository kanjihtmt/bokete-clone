# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(name: '人気',  category_id: 0)
Category.create(name: '人物2人以上',  category_id: 0)
Category.create(name: '動物',  category_id: 0)
Category.create(name: '風景',  category_id: 0)
Category.create(name: '無機物',  category_id: 0)
Category.create(name: 'イラスト',  category_id: 0)
Category.create(name: 'その他',  category_id: 0)

Category.create(name: 'バカ', category_id: 1)
Category.create(name: 'シュール', category_id: 1)
Category.create(name: 'お下劣', category_id: 1)
Category.create(name: 'ブラック', category_id: 1)
Category.create(name: '身内', category_id: 1)
Category.create(name: '例え', category_id: 1)
Category.create(name: 'その他', category_id: 1)


