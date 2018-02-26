# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Client.create(name:'Gerardo',last_name:'Romero',street:'Margarita Flores Castillo',number:'8406')
Client.create(name:'Ruth',last_name:'Romero',street:'Margarita Flores Castillo',number:'8406')
Client.create(name:'Esther',last_name:'Medrano',street:'Margarita Flores Castillo',number:'8406')
Client.create(name:'Josue',last_name:'Medrano',street:'Margarita Flores Castillo',number:'8406')

fVisit = FeeType.create(name:'Visita')
fWeekly = FeeType.create(name:'Semanal')
fMonthly = FeeType.create(name:'Mensual')

Fee.create(price: 25, fee_type: fVisit )
Fee.create(price: 110, fee_type: fWeekly )
Fee.create(price: 240, fee_type: fMonthly )

