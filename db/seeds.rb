# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Manager.delete_all

# ------

Manager.create(name: 'Miguel Muchotrigo', description: 'Gerente General')
Manager.create(name: 'Hugo Giribaldi', description: 'Gerente Financiero')
Manager.create(name: 'Armando Aguilar', description: 'Gerente Sistemas')
Manager.create(name: 'Yonel Primo', description: 'Gerente Administrativo')
Manager.create(name: 'Jean Lomparte', description: 'Gerente Marketing')