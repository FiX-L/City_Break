# nettoyage de la base de données
UserGameHint.destroy_all
UserGame.destroy_all
Hint.destroy_all
Enigma.destroy_all
Game.destroy_all
PointOfInterest.destroy_all
User.destroy_all
Badge.destroy_all


user1 = User.create!(email: "foucauld@gmail.com", encrypted_password: "123456")
game1 = Game.create!(title: "Alerte à Lille ! ", synopsis: "Au cœur de Lille, un danger sans précédent se profile, émanant d'un criminel connu sous le nom du Pélican.
  Ce fou dangereux à pour projet de semer le chaos dans le centre ville de Lille et menance de faire sauter une bombe fabriquée à base d'Orge et de Malt . Vous avez 90 minutes pour l'arreter.
  Si sûr de sa victoire, il a parsemé la ville de mystérieux indices et vous met au défi : saurez-vous déchiffrer ses énigmes et l'arrêter avant que la ville ne sombre dans l'abîme ?
  Plongez dans une aventure palpitante au cœur de Lille, où chaque monument peut receler un indice crucial. L'heure tourne, chaque seconde compte. Mettez votre sens de l'observation et  votre esprit de déduction à l'épreuve pour déjouer le plan machiavélique du Pélican.", sub_score: 0, poster_url: "URL de l'affiche du jeu 1", max_duration_in_sec: Time.now, winner_code: "à determiner")
badge1 = Badge.create!(name: "Novice", description: "Vis ta 1ere histoire et developpes ton esprit d'aventurier", poster_url: "URL de l'affiche 1")

#ETAPE 1 : GARE LILLE FLANDRES

enigma1 = Enigma.create!(title: "Gare Lille Flandres", description: "Du fer part le voyage, où Flandres te reçoit, Cherche sur les façades, l'oiseau qu'on ne voit. Sa présence révèle le début de l'histoire.", game_id: game1.id, point_of_interest_id: poi1.id, order: "1")
hint1 = Hint.create!(content: "Quand de Flandres tu sors, tourne ton regard à gauche. Au Pélican fixe ton attention, C'est lui qui lance cette mission.", enigma_id: enigma1.id)
poi1 = PointOfInterest.create!(anecdote: "Fondée en 1921, la brasserie régionale Pélican est plus connue aujourd’hui sous le nom de Pelforth.", poster_url: "URL de l'affiche PELICAN")

#ETAPE 2 : PLACE DE L'OPERA
enigma2 = Enigma.create!(title: "Vieille bourse de Lille", description: "Sous le Campanile, la plaque de Jacquard luit.Les 2 derniers chiffres de sa fin, a la ville, peuvent offrir la vie.Vise désormais le rang de Beauregard, la ou la choche d’or retentit,la brasserie Morel, heritère de la bonneterie, juste à sa droite, te conduit vers l’inédit", game_id: game1.id, point_of_interest_id: none, order: "2")

enigma3 = Enigma.create!(title: "Morel & Fils", description: "Le sein Rose de Morel, sur un boulet dessiné,rappelle le siège de Lille, dans l’histoire enraciné,Les 2 derniers chiffres de cette date, tu garderas en mémoire,c’est la clé du salut dans cette noire histoireD’ici, regarde en face, le beffroi se dresse fier,de Beethoven, l’hymne à la joie nous parvient chaque heure,gardes précieusement les 2 premiers chiffres de sa naissance en tête,car le temps presse, le pélican guette", game_id: game1.id, point_of_interest_id: poi2.id, order: "3")
poi2 = PointOfInterest.create!(anecdote: "Le textile a joué un rôle essentiel dans l'essor de la ville de Lille et de sa région.  Au XIXe siècle, la région du Nord de la France est devenue un centre majeur de production textile, avec Lille & Roubaix comme épicentre. Entre ces 2 géants, un bras d’or s’étire, vers la grande chaussée, il te fait partir.Cette route t’indique l’ancien hospice, mais avant un détour par la mer est propice.Au numéro 3 des chats bossus, les créatures te guettent, devant la mer de mosaique, tu t’arretes.", poster_url: "URL Motte Bossut")

#ETAPE 3 : L'HUITRIERE
enigma4 = Enigma.create!(title: "l'huitrière", description: "Sur la mosaique, tes yeux sont rivés Le homard en 8 morceaux est divisé Comme un puzzle, les fragments sont eparpillés, ton défi est de le reconstituer.", game_id: game1.id, point_of_interest_id: poi3.id, order: "4")
#RECONSTITUER LA PHOTO
poi3 = PointOfInterest.create!(anecdote: "Veritable institution Lilloise, l’Huitrière fut un restaurant étoilé de 1932 à sa fermeture en 2016. Sa facade art-déco en mosaique fut réalisée par la renommée maison gentil & bourdet. Vers l'Hospice Comtesse prends la route, Sur sa facade Est le mur d'un ancien moulin déroute. Face à lui, , l'Îlot Comtesse t'ouvre son verger. A l’ombre du chevet de sa chapelle , un nouvel indice l’on peut trouver.", poster_url: "l’huitrière")

#ETAPE 4 : HOSPICE COMTESSE
enigma5 = Enigma.create!(title: "Hospice comtesse", description: "Face au chevet de la chapelle, 3 images s'offrent en querelle. Entre le lion et les drapeaux, ton cœur est en étau. Mais souviens-toi, en Flandres tu te trouves, alors choisis et trouve.", game_id: game1.id, point_of_interest_id: poi4.id, order: "5")
hint2 = Hint.create!(content: "Quand de Flandres tu sors, tourne ton regard à gauche. Au Pélican fixe ton attention, C'est lui qui lance cette mission.", enigma_id: enigma5.id)
poi4 = PointOfInterest.create!(anecdote: "le Lion des Flandres est toujours largement utilisé comme symbole culturel et identitaire dans la région. Son origine remonte au Moyen Âge, où il est apparu dans les armes des comtes de Flandre.Depuis l'îlot, rebrousse ton chemin jusqu’à l’ancien moulin; La rue de la Monnaie tu descends, puis une perpendiculaire tu prends. Aux vieux murs tu accèdes, la ou “le Vieux de la Vieille” te surveille.", poster_url: "Lion des Flandres")

#ETAPE 5 : VIEUX DE LA VIEILLE
enigma6 = Enigma.create!(title: "Le secret du Welsh", description: "Au Vieux de la Vieille, les papilles s'éveillent. Le Welsh y est roi, mais sauras-tu le comprendre avec moi ? Entre pain, moutarde, œufs et jambon, la bière et les frites jouent le bon ton. Mais le roi cheddar reste à deviner, Galloway, Montgomery, Keen's ou Westcombe, lequel dois-tu privilégier ?", game_id: game1.id, point_of_interest_id: poi5.id, order: "6")
#INTEGRER QCM
poi5 = PointOfInterest.create!(anecdote: "Les Hauts-de-France sont réputés pour deux spécialités culinaires incontournables : le Welsh et la carbonnade flamande. Le Welsh est un plat à base de pain grillé, de jambon, de bière et de cheddar fondu. La carbonnade flamande est un ragoût de bœuf mijoté dans une sauce riche à la bière brune. Les deux plats sont traditionnellement servis avec de savoureuses frites croustillantes, créant ainsi une combinaison parfaite entre les saveurs riches et la texture des frites. Marche vers l'ancien cœur battant de Lille, la Treille.", poster_url: "photo Welsch & carbonnade flamande")

#ETAPE 6 : CATHEDRALE DE LA TREILLE
enigma7 = Enigma.create!(title: "Cathedrale de la Treille", description: "Ladislas Kijno est son nom, d'une gigantesque rosace, il nous a fait don.Les 2 derniers chiffres de son année d’installation, sauver la ville te permettront.", game_id: game1.id, point_of_interest_id: poi6.id, order: "7")
poi6 = PointOfInterest.create!(anecdote: "La vague de migration polonaise dans les Hauts-de-France en 1920 a eu un impact significatif sur la région. Leur présence a renforcé les secteurs clés tels que les mines, la sidérurgie et le textile, contribuant ainsi à la prospérité économique et culturelle de la région. immortalisé par le travail du photographe Kasimir Zgorecki, qui a documenté cet héritage.De l'ancien au nouveau, le cœur de la ville appelle. A l’ombre des 3 grâces et sous le regard du plus illustre des Lillois, l'ultime énigme résidera", poster_url: "Grand Place de Lille")

#ETAPE 7 : GRAND PLACE DE LILLE
enigma8 = Enigma.create!(title: "Grand Place de Lille", description: "La bombe est cachée sous la fontaine, Pour la désamorcer, regroupes l’ensemble des chiffres que tu as stockée et réponds à cette énigme finale : La fontaine de la déesse est ton dernier arrêt Rappelle-toi du jour où l’appel d’un grand homme a changé notre destinée, valide-le et libère Lille du péché.", game_id: game1.id, point_of_interest_id: poi7.id, order: "8")
poi7 = PointOfInterest.create!(anecdote: "BRAVO !! Tu as triomphé du Pelican, la ville de Lille te remercie….", poster_url: "Ville en Liesse")


#MISSING :
# STRUCTURE TO INTEGRATE GAME AND QCM
