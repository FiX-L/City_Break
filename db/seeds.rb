# nettoyage de la base de données

p "DESTROYING ALL DATAS"



UserGameHint.destroy_all
UserGame.destroy_all
Hint.destroy_all
Answer.destroy_all
Enigma.destroy_all
PointOfInterest.destroy_all

Game.destroy_all

User.destroy_all
Badge.destroy_all

p "ALL DATAS DESTROYED"

p "***********"

p "CREATING USERS"
User.create!(email: "foucauld@gmail.com", password: "123456")

p "#{User.count} user created"

p "***********"

p "CREATE GAMES, ENIGMA, HINTS, POI..."

game1 = Game.create!(title: "Alerte à Lille ! ", synopsis: "Au cœur de Lille, un danger sans précédent se profile, émanant d'un criminel connu sous le nom du Pélican.
  Ce fou dangereux à pour projet de semer le chaos dans le centre ville de Lille et menance de faire sauter une bombe fabriquée à base d'Orge et de Malt . Vous avez 90 minutes pour l'arreter.
  Si sûr de sa victoire, il a parsemé la ville de mystérieux indices et vous met au défi : saurez-vous déchiffrer ses énigmes et l'arrêter avant que la ville ne sombre dans l'abîme ?
  Plongez dans une aventure palpitante au cœur de Lille, où chaque monument peut receler un indice crucial. L'heure tourne, chaque seconde compte. Mettez votre sens de l'observation et  votre esprit de déduction à l'épreuve pour déjouer le plan machiavélique du Pélican.", sub_score: 0, poster_url: "URL de l'affiche du jeu 1", max_duration_in_sec: 3600, winner_code: "à determiner")

badge1 = Badge.create!(name: "Novice", description: "Vis ta 1ere histoire et developpes ton esprit d'aventurier", poster_url: "URL de l'affiche 1")

#ETAPE 1 : GARE LILLE FLANDRES
poi1 = PointOfInterest.create!(titre: "Le Pélican", anecdote: "Fondée en 1921, la brasserie régionale Pélican est plus connue aujourd’hui sous le nom de Pelforth.", poster_url: "https://imagizer.imageshack.com/img922/6522/0e8DMj.jpg", indication_next_step: "Le Pélican d'or éclaire ta route, suit sa trace au cœur de la déroute.</br> Là où l'or s'échange en rires et en mots, vers la vieille Bourse, tu trouveras ton lot." )
enigma1 = Enigma.create!(enigma_type: "photos_QCM", title: "Gare Lille Flandres", description: "Du fer part le voyage, où Flandres te reçoit, </br> Cherche sur les façades, l'oiseau qu'on ne voit. </br> Sa présence révèle le début de l'histoire.", game_id: game1.id, point_of_interest_id: poi1.id, order_in_the_game: 1)
hint1 = Hint.create!(content: "Quand de Flandres tu sors, tourne ton regard à gauche. Au Pélican fixe ton attention, C'est lui qui lance cette mission.", enigma_id: enigma1.id)

answer1 = Answer.create(enigma_id: enigma1.id, is_good_answer: true, content: "goodanswer", poster_url: "https://imagizer.imageshack.com/img923/8537/KZy3js.jpg")
answer2 = Answer.create(enigma_id: enigma1.id, is_good_answer: false, content: "falseanswer", poster_url: "https://imagizer.imageshack.com/img924/2554/mSMWUL.jpg")
answer3 = Answer.create(enigma_id: enigma1.id, is_good_answer: false, content: "falseanswer", poster_url: "https://imagizer.imageshack.com/img924/3861/24pLHz.jpg")
answer4 = Answer.create(enigma_id: enigma1.id, is_good_answer: false, content: "falseanswer", poster_url: "https://imagizer.imageshack.com/img923/1636/7j3Jnx.jpg")


#ETAPE 2 : PLACE DE L'OPERA
poi2 = PointOfInterest.create!(titre: "Le passé textile", anecdote: "Le textile a joué un rôle essentiel dans l'essor de la ville de Lille et de sa région. </br> Au XIXe siècle, la région du Nord de la France est devenue un centre majeur de production textile, avec Lille & Roubaix comme épicentre.", poster_url: "https://imagizer.imageshack.com/img924/3034/b4jSAI.jpg", indication_next_step: "Entre ces 2 géants, un bras d’or s’étire, vers la grande chaussée, il te fait partir. </br> Cette route t’indique l’ancien hospice, mais avant un détour par la mer est propice. </br> Au numéro 3 des chats bossus, les créatures te guettent, </br> devant la mer de mosaique, tu t’arretes.")
enigma2 = Enigma.create!(enigma_type: "figuresenigma", title: "Vieille bourse de Lille", description: "Sous le Campanile, la plaque de Jacquard luit. </br> Les 2 derniers chiffres de l'année de sa fin, a la ville, peuvent offrir la vie. </br> Vise désormais le rang de Beauregard, la ou la choche d’or retentit, </br> la brasserie Morel, heritère de la bonneterie, juste à sa droite, te conduit vers l’inédit", game_id: game1.id, order_in_the_game: 2)
enigma3 = Enigma.create!(enigma_type: "figuresenigma", title: "Morel & Fils", description: "Le sein Rose de Morel, sur un boulet dessiné, </br> rappelle le siège de Lille, dans l’histoire enraciné, </br> Les 2 derniers chiffres de cette date, tu garderas en mémoire, </br> c’est la clé du salut dans cette noire histoire. </br> D’ici, regarde en face, le beffroi se dresse fier, </br> de Beethoven, l’hymne à la joie nous parvient chaque heure, </br> gardes précieusement les 2 premiers chiffres de sa naissance en tête,car le temps presse, le pélican guette", game_id: game1.id, point_of_interest_id: poi2.id, order_in_the_game: 3)


#ETAPE 3 : L'HUITRIERE
poi3 = PointOfInterest.create!(titre: "L'Huitrière", anecdote: "Veritable institution Lilloise, l’Huitrière fut un restaurant étoilé de 1932 à sa fermeture en 2016. </br> Sa facade art-déco en mosaique fut réalisée par la renommée maison gentil & bourdet.", indication_next_step: "Vers l'Hospice Comtesse prends la route, </br> Sur sa facade Est le mur d'un ancien moulin déroute. </br> Face à lui, , l'Îlot Comtesse t'ouvre son verger. </br> A l’ombre du chevet de sa chapelle , un nouvel indice l’on peut trouver.", poster_url: "https://imagizer.imageshack.com/img923/963/9Wk6dt.jpg")
enigma4 = Enigma.create!(enigma_type: "minigame", title: "l'huitrière", description: "Sur la mosaique, tes yeux sont rivés, Le homard en 8 morceaux est divisé </br> Comme un puzzle, les fragments sont eparpillés </br> ton défi est de le reconstituer.", game_id: game1.id, point_of_interest_id: poi3.id, order_in_the_game: 4)
#RECONSTITUER LA PHOTO


#ETAPE 4 : HOSPICE COMTESSE
poi4 = PointOfInterest.create!(titre: "Le lion des Flandres", anecdote: "le Lion des Flandres est toujours largement utilisé comme symbole culturel et identitaire dans la région. </br> Son origine remonte au Moyen Âge, où il est apparu dans les armes des comtes de Flandre.", indication_next_step: "Depuis l'îlot, rebrousse ton chemin jusqu’à l’ancien moulin; La rue de la Monnaie tu descends, puis une perpendiculaire tu prends. Aux vieux murs tu accèdes, la ou “le Vieux de la Vieille” te surveille.", poster_url: "https://imagizer.imageshack.com/img922/6328/0qdPK9.png")
enigma5 = Enigma.create!(enigma_type: "photos_QCM", title: "Hospice comtesse", description: "Face au chevet de la chapelle, 3 blasons s'offrent en querelle. </br> Entre le lion et les drapeaux, ton cœur est en étau. </br> Mais souviens-toi, en Flandres tu te trouves, alors choisis et trouve.", game_id: game1.id, point_of_interest_id: poi4.id, order_in_the_game: 5)
hint2 = Hint.create!(content: "Le roi de la savane peut aussi être le roi des villes.", enigma_id: enigma5.id)

answer1 = Answer.create(enigma_id: enigma5.id, is_good_answer: true, content: "goodanswer", poster_url: "https://imagizer.imageshack.com/img923/6126/9rCgG9.jpg")
answer2 = Answer.create(enigma_id: enigma5.id, is_good_answer: false, content: "falseanswer", poster_url: "https://imagizer.imageshack.com/img924/3174/xxrLiC.jpg")
answer3 = Answer.create(enigma_id: enigma5.id, is_good_answer: false, content: "falseanswer", poster_url: "https://imagizer.imageshack.com/img923/6717/dlwJWQ.jpg")
answer4 = Answer.create(enigma_id: enigma5.id, is_good_answer: false, content: "falseanswer", poster_url: "https://imagizer.imageshack.com/img924/6107/5TGvHL.jpg")



#ETAPE 5 : VIEUX DE LA VIEILLE
poi5 = PointOfInterest.create!(titre: "Les spécialités culinaires", anecdote: "Les Hauts-de-France sont réputés pour deux spécialités culinaires incontournables : le Welsh et la carbonnade flamande. </br> Le Welsh est un plat à base de pain grillé, de jambon, de bière et de cheddar fondu. </br> La carbonnade flamande est un ragoût de bœuf mijoté dans une sauce riche à la bière brune. </br> Les deux plats sont traditionnellement servis avec de savoureuses frites croustillantes, créant ainsi une combinaison parfaite qui ravit les nordistes depuis des générations.", indication_next_step: "Marche vers l'ancien cœur battant de Lille, la Treille.", poster_url: "https://imagizer.imageshack.com/img924/4408/1iIIxn.jpg")
enigma6 = Enigma.create!(enigma_type: "photos_QCM", title: "Le secret du Welsh", description: "Au Vieux de la Vieille, les papilles s'éveillent. </br> Le Welsh y est roi, mais sauras-tu le comprendre avec moi ? </br> Entre pain, moutarde, œufs et jambon, la bière et les frites jouent le bon ton. </br> Mais le roi cheddar reste à deviner, Galloway, Montgomery, Keen's ou Westcombe, lequel dois-tu privilégier ?", game_id: game1.id, point_of_interest_id: poi5.id, order_in_the_game: 6)
#INTEGRER QCM

answer1 = Answer.create(enigma_id: enigma6.id, is_good_answer: true, content: "goodanswer", poster_url: "https://imagizer.imageshack.com/img923/3710/rOp6Fv.jpg")
answer2 = Answer.create(enigma_id: enigma6.id, is_good_answer: false, content: "falseanswer", poster_url: "https://imagizer.imageshack.com/img924/131/0FayAe.jpg")
answer3 = Answer.create(enigma_id: enigma6.id, is_good_answer: false, content: "falseanswer", poster_url: "https://imagizer.imageshack.com/img922/8672/oXPfuO.jpg")
answer4 = Answer.create(enigma_id: enigma6.id, is_good_answer: false, content: "falseanswer", poster_url: "https://imagizer.imageshack.com/img923/45/z7Vt2C.jpg")


#ETAPE 6 : CATHEDRALE DE LA TREILLE
poi6 = PointOfInterest.create!(titre: "Les Hauts de France, un brassage culturel", anecdote: "La vague de migration polonaise dans les Hauts-de-France en 1920 a eu un impact significatif sur la région. </br> Leur présence a renforcé les secteurs clés tels que les mines, la sidérurgie et le textile, contribuant ainsi à la prospérité économique et culturelle de la région. </br> Cet héritage fut immortalisé par le travail du photographe Kasimir Zgorecki.", indication_next_step: "A l’ombre des 3 grâces et sous le regard du plus illustre des Lillois, l'ultime énigme résidera", poster_url: "https://imagizer.imageshack.com/img922/2778/ddjFRc.jpg")
enigma7 = Enigma.create!(enigma_type: "figuresenigma", title: "Cathedrale de la Treille", description: "Ladislas Kijno est son nom, </br> d'une gigantesque rosace, il nous a fait don. </br> Les 2 derniers chiffres de son année d’installation </br> sauver la ville te permettront.", game_id: game1.id, point_of_interest_id: poi6.id, order_in_the_game: 7)
hint3 = Hint.create!(content: "Cette rosace fut installée à l'aube du 3e millénaire.", enigma_id: enigma7.id)


#ETAPE 7 : GRAND PLACE DE LILLE
poi7 = PointOfInterest.create!(titre: "BRAVO !!!", anecdote: "Tu as triomphé du Pelican ! </br> La ville de Lille te remercie….", poster_url: "https://imagizer.imageshack.com/img923/1715/uRZKnj.jpg")
enigma8 = Enigma.create!(enigma_type: "resolution_game", title: "Grand Place de Lille", description: "La bombe est cachée sous la fontaine, Pour la désamorcer, regroupes l’ensemble des chiffres que tu as stocké et réponds à cette énigme finale : </br> La fontaine de la déesse est ton dernier arrêt Rappelle-toi du jour de juin où l’appel d’un grand homme a changé notre destinée </br> valide-le et libère Lille du péché.", game_id: game1.id, point_of_interest_id: poi7.id, order_in_the_game: 8)

enigma9 = Enigma.create!(enigma_type: "bombe", title: "Entrez le code", description: "", game_id: game1.id, order_in_the_game: 9)

p "#{Game.count} games created - #{Enigma.count} enigmacreated - #{Hint.count} hint created - #{PointOfInterest.count} POI created "

p "*********************"

p "SEEDS DONE !!!! GOOD job"
p "*********************"


#MISSING :
# STRUCTURE TO INTEGRATE GAME AND QCM
