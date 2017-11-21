# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "-------- Usuario creado --------"
@user = User.new(:name => 'Gabriela', :lastname => 'Gonzalez', :email => 'ggm.gaby06@gmail.com', :password => '123456', :password_confirmation => '123456')
@user.save

puts "-------- Evento creado --------"
@event = Event.new(:name => 'Infantil')
@event.save

puts "-------- Categoria creado --------"
@category = Category.new(:name => 'Invitaciones Infantiles', :description => 'Editar', :event_id => 1)
@category.save

puts "-------- Modelo creado --------"
@model = Model.new(:name => 'Inicio', :description => 'Imágenes de inicio. No borrar', :category_id => 1)
@model.save