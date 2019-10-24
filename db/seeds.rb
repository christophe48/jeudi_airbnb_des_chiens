# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#je détruie tout ce que je crée pour éviter d'avoir une trop grosse bdd avec des faux infos
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all

#je crée mes tableaux pour pouvoir générer des données aléatoirement avec sample
c = []
d = []
ds = []
race = ["caniche", "rotveiller","berger-Allemand", "chi wa wa"]
#je fais une première boucle sur city pour sans elle je ne peux pas créer les autres
10.times do |index|
	c << City.create(id:index,city_name: Faker::Address.city)
	puts "#{Faker::Address.city}"
end
#je fais ma deuxième boucle pour générer dog et dogsitter avec une city aléatoire
10.times do |index|
	d << Dog.create(id:index,race: race.sample, name: Faker::Name.first_name,city: c.sample)
	ds << Dogsitter.create(id:index, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: c.sample)
	puts "Chien : #{Faker::Name.first_name}"
end
#je fais cette 3eme boucle pour créer ma table intermédiaire avec un dog, un dogsitter aléatoire
10.times do |index|
	Stroll.create(id:index,date: Faker::Time.forward(days: 23), dog: d.sample, dogsitter: ds.sample)
	puts"date de promenade :#{Faker::Time.forward(days: 23)}"
end
