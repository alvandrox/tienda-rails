# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Faker::Config.locale = 'es-CL'

Fabricator(:proveedor) do
  nombre { Faker::Name.name }
  razon_social { Faker::Company.name }
  rut { Faker::Code.isbn }
  direccion { Faker::Address.street_address }
  telefono { Faker::PhoneNumber.phone_number }
  email { Faker::Internet.email }
  url { Faker::Internet.url }
end

Fabricator(:color) do
  nombre { Faker::Commerce.color }
  codigo { "#" + Faker::Number.hexadecimal(6) }
end



# Fabricator(:talla) do
#   size = ['s', 'm', 'l', 'xl']
#   nombre { rand size }
#   #codigo { "#" + Faker::Number.hexadecimal(6) }
# end

10.times { Fabricate(:proveedor) }
20.times { Fabricate(:color) }

talla = Talla.create([{ nombre: 's' },
                      { nombre: 'm' },
                      { nombre: 'l' },
                      { nombre: 'xl' },
                     ])

categoria = Categoria.create([{ nombre: 'Panty' },
                              { nombre: 'Calcetines' },
                              { nombre: 'Bucaneras' },
                              { nombre: 'Ballerinas' },
                              { nombre: 'Cuadros' },
                              { nombre: 'Slip' },
                              { nombre: 'Camisetas' },

                            ])

proveedor1 = Proveedor.first
proveedor2 = Proveedor.last

Fabricator(:marca) do
  nombre { Faker::Commerce.department(2, true) }
  proveedor_id { rand(proveedor1.id..proveedor2.id) }
end

20.times { Fabricate(:marca) }