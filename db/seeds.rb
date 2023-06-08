# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "#####################"
puts ' Cleaning database...'
puts "#####################"

User.destroy_all
p "--------------all users deleted--------------"
Enigma.destroy_all
p "--------------all enigmas deleted--------------"
Game.destroy_all
p "--------------all games deleted--------------"
Hint.destroy_all
p "--------------all hints deleted--------------"




user1 = User.create(email: "user@example.com", password: "password")

game1 = Game.create(title: "Alerte à Lille", synopsis: "Au cœur de Lille, un danger sans précédent se profile, émanant d'un criminel connu sous le nom du Pélican .
    Ce fou dangereux vous a donné accès à la bombe dans la ville qu’il compte faire sauter dans une heure.  Vous pouvez y accéder quand vous le souhaitez.
    Si sûr de sa victoire, il a parsemé la ville de mystérieux indices et vous met au défi : saurez-vous déchiffrer ses énigmes et l'arrêter avant que la ville ne sombre dans l'abîme ?
    Plongez dans une aventure palpitante au cœur de Lille, où chaque monument peut receler un indice crucial. L'heure tourne, chaque seconde compte. Mettez votre sens de l'observation et  votre esprit de déduction à l'épreuve pour déjouer le plan machiavélique du Pélican",
    poster_url: "https://i.ytimg.com/vi/yJcc-IVJe30/maxresdefault.jpg", sub_score: 0, max_duration_in_sec: Time.now, winner_code: "0")
enigma1 = Enigma.create(title: "Un volatile vous surveille....Retrouvez-le", description: " GARE LILLE FLANDRES. Du fer part le voyage, où Flandres te reçoit, Cherche sur les façades, l'oiseau qu'on ne voit. Sa présence révèle le début de l'histoire.", order: "1")
poi1 = PointOfInterest.create(anecdote: "yolo", poster_url: "https://img.freepik.com/photos-gratuite/prise-vue-au-grand-angle-seul-arbre-poussant-sous-ciel-assombri-pendant-coucher-soleil-entoure-herbe_181624-22807.jpg")
# hint1 = Hint.create(content: "devine")
badge1 = Badge.create(name: "oui", description: "voila", poster_url: "https://media.istockphoto.com/id/537373196/fr/photo/arbres-formant-un-c%C5%93ur.jpg?s=612x612&w=0&k=20&c=TsmnjaWlfPIOnUuWgGcvX1CGFKPOdlq-Iqsy_eNZtXs=")
