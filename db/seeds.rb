# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Deleting everything..."
puts "------------------------------------"

User.destroy_all
Search.destroy_all
Charity.destroy_all
Article.destroy_all
Support.destroy_all
Project.destroy_all

puts "Creating users..."
puts "------------------------------------"


antoine = User.create!(
    first_name: "Antoine",
    last_name: "Maurel",
    email: "test01@test.fr",
    password: "testpassword"
    )

tristan = User.create!(
    first_name: "Tristan",
    last_name: "Simon",
    email: "test02@test.fr",
    password: "testpassword"
    )

manon = User.create!(
    first_name: "Manon",
    last_name: "Oriol",
    email: "test03@test.fr",
    password: "testpassword"
    )


puts "Creating searches..."
puts "------------------------------------"


antoine_search1 = Search.create!(content: "ivanka trump", user: antoine)

antoine_search2 = Search.create!(content: "ivanka trump boyfriend", user: antoine)

antoine_search3 = Search.create!(content: "is ivanka trump single?", user: antoine)

antoine_search4 = Search.create!(content: "donald trump make up tutorial", user: antoine)

tristan_search1 = Search.create!(content: "vacances en biélorussie", user: tristan)

tristan_search2 = Search.create!(content: "camping pas cher en biélorussie", user: tristan)

manon_search1 = Search.create!(content: "roswell zone 51", user: manon)

manon_search2 = Search.create!(content: "epstein didnt kill himself", user: manon)


puts "Creating charities..."
puts "------------------------------------"

le_refuge = Charity.create!(
    name: "Le refuge",
    description: "La Fondation Le Refuge est une fondation française conventionnée par l'État dont la vocation est d'offrir un hébergement temporaire et un accompagnement social, médical, psychologique et juridique aux jeunes garçons et filles majeurs, victimes d'homophobie et de transphobie.",
    address: "75 place d’Acadie, 34000 Montpellier",
    category: "lgbt+"
    )

osez_le_feminisme = Charity.create!(
    name: "0sez le féminisme",
    description: "Osez le féminisme ! est une association loi de 1901 féministe française. À l'origine un journal dont le premier numéro est paru en juin 2009.",
    address: "22, rue Deparcieux, 75014 Paris",
    category: "feminist"
    )

causette = Charity.create!(
    name: "Causette",
    description: "Causette est un magazine féminin français mensuel, créé par les Éditions Gynéthic, une maison d'édition indépendante fondée en janvier 2009 par Gregory Lassus-Debat et Gilles Bonjour.",
    address: "105 rue lafayette 75010 Paris",
    category: "feminist"
    )

solidarites_femmes = Charity.create!(
    name: "Solidarités femmes",
    description: "Solidarité Femmes, c'est un réseau d'associations spécialisées dans l'accueil, l'accompagnement et l'hébergement des femmes victimes de violences.",
    address: "La Villette, 75019 Paris",
    category: "domestic violence"
    )

nous_toutes = Charity.create!(
    name: "Collectif Nous toutes",
    description: "Le collectif #NousToutes est un collectif féministe engagé contre les violences sexistes, sexuelles, économiques, psychologiques, verbales et physiques faites aux femmes. Il regroupe des personnes physiques, des associations et des organisations syndicales et politiques.",
    address: "18 Boulevard Jules Ferry, 75011 Paris",
    category: "feminist"
    )

puts "Creating articles..."
puts "------------------------------------"

le_refuge_article = Article.create!(
  title: "Reconfinement: message de Nicolas Noguier, Président du Refuge",
  date: '2020-11-18',
  url: "https://www.le-refuge.org/videos/reconfinement-message-de-nicolas-noguier-president-du-refuge.html",
  charity: le_refuge,
  content: "#Confinement: Nicolas Noguier, Président Fondateur du Refuge, adresse un message vidéo aux jeunes accompagnés, membres des équipes, partenaires et soutiens de notre Fondation.")

osez_le_feminisme_article = Article.create!(
  title: "Envoyez cette lettre ouverte au gouvernement pour que cesse l’impunité",
  date: '2020-11-20',
  url: "http://osezlefeminisme.fr/envoyez-cette-lettre-ouverte-au-gouvernement-pour-que-cesse-limpunite-justicepourl/",
  charity: osez_le_feminisme,
  content: "La qualification pour viol a été refusée à la victime par la Chambre criminelle de la Cour de cassation sous le pretexte que les pénétrations n’avaient pas été “suffisamment profondes”. La Cour ajoute ainsi une nouvelle condition restrictive à la qualification de viol.
Dans un arrêt du 14 Octobre 2020 , la Cour de Cassation exige d’une victime qui avait 13 ans au moment des faits, qu’elle justifie de la profondeur des pénétrations imposées par son beau-père pour qualifier le viol.

Or, le code pénal ne demande aucune exigence de profondeur. Les juges inventent du droit et assurent l’impunité des violeurs pédocriminels.

Comment continuer à exiger des filles et des femmes qu’elles confient leur sécurité, leur confiance et leur réparation à un système qui persiste à leur dénier justice ?

Nous avons écrit une lettre ouverte pour que vous puissiez l’envoyer au gouvernement et réclamer justice pour L.
Vous pouvez copier la lettre ci-dessous :

Monsieur le Président de la République,

Monsieur le Premier Ministre,

Monsieur le Garde des Sceaux,

Dans un arrêt du 14 octobre 2020, la Chambre criminelle de la Cour de cassation a créé une nouvelle condition restrictive à la qualification de viol, allant au-delà de son pouvoir d’interprétation, assurant encore plus d’impunité aux violeurs qui ne sont pourtant déjà qu’1 pour cent (1) à être condamnés pour leurs crimes.

L. avait 13 ans lorsque son beau-père a commencé à lui imposer des actes sexuels. Elle décrit ces violences sexuelles qui ont duré plusieurs années, notamment des pénétrations avec la langue. Néanmoins, les juges du fond ont exigé de la victime qu’elle donne des précisions « en termes d’intensité, de profondeur, de durée ou encore de mouvement » en défaut de quoi, selon ces juges, cela « ne caractérise pas suffisamment une introduction volontaire au-delà de l’orée du vagin, suffisamment profonde pour caractériser un acte de pénétration. »

La Cour de cassation, plus haute instance du système judiciaire français, a validé cet argumentaire, allant au-delà des critères requis par le Code Pénal pour qualifier un viol.

En effet, l’article 222-23 du Code Pénal dispose que « tout acte de pénétration sexuelle, de quelque nature qu’il soit, commis sur la personne d’autrui ou sur la personne de l’auteur par violence, contrainte, menace ou surprise est un viol ». Le critère est donc l’acte de pénétration et non sa profondeur, cette jurisprudence vient rendre encore plus limitative la définition juridique du viol en droit français, pourtant déjà en violation de la Convention d’Istanbul car trop restrictive.(2)

Comment continuer à exiger des filles et des femmes qu’elles confient leur sécurité, leur confiance et leur réparation à un système qui persiste à leur dénier justice ?

70 pour cent des plaintes pour viols sur mineur-es sont classées sans suite.
52 pour cent des plaintes instruites sont ensuites déqualifiées et correctionnalisées.
0,3 pour cent des viols sur mineur-es font l’objet d’un procès pour viol.(3)
Nous voulons la fin de l’impunité des violences sexuelles.

C’est urgent.")

causette_article = Article.create!(
  title: "Violences faites aux femmes : le 3919 en danger ?",
  date: '2020-11-21',
  url: "https://www.causette.fr/societe/en-france/violences-faites-aux-femmes-le-3919-en-danger/",
  charity: causette,
  content: "Pour étendre les horaires du numéro d’écoute dédié aux femmes victimes de violences, le gouvernement souhaite lancer un marché public. Une décision qui alarme la Fédération nationale solidarité femmes (FNSF), en charge de la ligne depuis sa création.

Cette fois-ci, la menace est à leur porte. Depuis plusieurs mois, la Fédération nationale solidarités femmes (FNSF) s’inquiète de la volonté du ministère en charge de l’Égalité entre les femmes et les hommes d’avoir recours à un marché public pour la gestion du 3919, le numéro d’écoute destiné aux femmes qui subissent des violences. A quelques jours de la publication du cahier des charges de ce marché public, prévue avant la fin de l’année, la fédération pousse un nouveau coup de gueule.")


solidarites_femmes_article = Article.create!(
  title: "Le label TOMBOY soutient Solidarité Femmes",
  date: '2020-11-20',
  url: "https://www.solidaritefemmes.org/actualites/le-label-tomboy-soutient-solidarite-femmes",
  charity: solidarites_femmes,
  content: "Pour la première édition de son projet TOMBOY CARITATIF, le label se mobilise aux côtés de la Fédération Nationale Solidarité Femmes.
En exclusivité pour cette collaboration, TOMBOY propose une réécriture de son t-shirt signature, limitée à 250 exemplaires. Le modèle est mis en vente sur le site TOMBOY depuis le 26 octobre.

100% des bénéfices sont reversés à « Solidarité Femmes».")

nous_toutes_article = Article.create!(
  title: "Programme du #21novembre",
  date: '2020-11-18',
  url: "https://www.noustoutes.org/21novembre/",
  charity: nous_toutes,
  content: "Samedi 21 novembre, #NousToutes appelle à une journée de mobilisation, en ligne, pour dire stop aux violences sexistes et sexuelles, dénoncer l’impunité et le manque d’ambition des pouvoirs publics.

Au programme de cette journée de mobilisation : des formations, des actions d’interpellation, des lives avec des féministes inspirantes et des concerts !
Téléchargez et partagez ces visuels sur les réseaux sociaux en n’oubliant pas d’indiquer les liens pour s’inscrire :

✊ Pour participer aux actions : http://bit.ly/actions21nov")

puts "Creating supports..."
puts "------------------------------------"

Support.create!(user: antoine, charity: causette)

Support.create!(user: antoine, charity: osez_le_feminisme)

Support.create!(user: antoine, charity: le_refuge)

Support.create!(user: tristan, charity: solidarites_femmes)

Support.create!(user: manon, charity: solidarites_femmes)

Support.create!(user: manon, charity: nous_toutes)


puts "Creating projects..."
puts "------------------------------------"

le_refuge_project = Project.create!(
  title: "22 dispositifs et 187 places d’hébergement pour donner un nouveau départ aux jeunes accueillis",
  date: '2020-11-17',
  content: "Implantés dans les principales villes de France métropolitaine ainsi qu’en Outre-mer, les 22 dispositifs d’accueil de la Fondation Le Refuge proposent aux jeunes LGBT+ en détresse un hébergement au sein d’appartements/maisons-relais.

Au cœur de ces derniers, des équipes pluridisciplinaires salariées et/ou bénévoles s’organisent autour de différents pôles pour accompagner au mieux les jeunes dans leurs parcours de vie. Cet accompagnement gratuit se compose d’un soutien psychologique, de rendez-vous individuels hebdomadaires avec un travailleur social, et de participation à divers ateliers et permanences.

Ces temps communs visent à développer leurs compétences ou savoir-faire dans divers domaines (gestion d’un budget, cuisine, rédaction de CV, lettres de motivation…) ainsi qu’à leur apporter des moments d’évasion (sorties culturelles, randonnées, repas partagés, ateliers créatifs, café-philo…).",
  charity: le_refuge)

osez_le_feminisme_project = Project.create!(
  title: "FéministCamp",
  date: '2020-11-19',
  content:"Parce que le féminisme s’accompagne irrémédiablement de cheminements et d’apprentissages continus, nous souhaitons, depuis notre création en 2009, faire profiter le maximum de femmes, militantes ou non, de moments de formation, et de partages bienveillants et sorores.

C’est pourquoi nous organisons deux fois par an des week-ends de formation féministe : Ouverts à tout.e.s nos adhérent.e.s, ces week-ends rassemblent plus de 150 féministes de toute la France, dans la Maison Familiale et Rurale de Rambouillet dans la banlieue parisienne. Le programme s’étale du samedi au dimanche en quatre temps d’ateliers – que vous pouvez choisir parmi plus d’une vingtaine de thèmes, aussi variés que les violences économiques, le système porno-prostitueur, l’injonction au couple et à la maternité, les luttes lesbiennes, l’histoire du féminisme et de notre matrimoine, les femmes racisées, l’écriture inclusive… Proposés par nos militantes bénévoles, qui peuvent être accompagnées d’intervenantes extérieures ou d’associations amies, ces ateliers permettent de déconstruire les stéréotypes sexistes et d’analyser tous les mécanismes du continuum des violences masculines, afin de s’armer pour lutter collectivement contre le patriarcat. Il y a tant de verrous à faire sauter et de déclics à provoquer, que ces temps de formations sont toujours riches et importants !

L’hébergement et les repas sont compris dans le prix des inscriptions, et le samedi soir est l’occasion de se retrouver autour de jeux féministes et de stands, ainsi que de pousser la chansonnette (toujours féministe !) avec un karaoké collectif ! Mais aussi simplement de se détendre et poursuivre les échanges toujours intéressants et prenants… en toute sororité !",
charity: osez_le_feminisme)

causette_project = Project.create!(
  title: "Rencontre numérique « C’est mon corps » avec Martin Winckler",
  date:'2020-10-05',
  content: "« En ce qui concerne la santé des femmes, il n’y a pas de questions stupides ni taboues, il n’y a que des questions légitimes. » – Martin Wincler, médecin, allié féministe, youtubeur et auteur.

Causette vous propose une soirée exceptionnelle d’échanges avec l’auteur, dans le cadre de la sortie de son livre C’est mon corps. Règles, contraception, grossesse, violences obstétricales… Martin Winckler passe en revue dans son nouvel ouvrage toutes les questions que nous pouvons nous poser et y répond avec esprit et bienveillance. À votre tour de lui poser des questions !

Cette rencontre virtuelle sur la plateforme Zoom sera animée par Sarah Gandillot, rédactrice en chef de Causette. C’est évidemment gratuit, inscrivez-vous vite sur ce lien !",
charity: causette)

solidarites_femmes_project = Project.create!(
  title: "Les chiffres de l’association Solidarité Femmes Besançon",
  date: '2020-11-20',
  content: "243 femmes rencontrées pour la 1ère fois (370 enfants exposés). Elles font état de :


violences psychologiques pour 84%
violences physiques pour 66%
violences économiques pour 26%
violences sexuelles pour 23%
violences administratives pour 11%
harcèlement après séparation pour 14%.
105 femmes accompagnées hors hébergement au-delà d’un entretien (169 enfants exposés).



621 passages de femmes à l’accueil de jour toutes confondues

(1er contact, femmes hébergées ou suivies hors hébergement) pour un entretien, des informations, des démarches administratives, une recherche d’hébergement en urgence, prendre rendez-vous, l’accès au vestiaire, à la banque alimentaire.

23 femmes et 27 enfants hébergés au sein de notre CHRS et en hébergement d’urgence,

soit 11 989 journées d’hébergement.

1068 rendez-vous réalisés avec des femmes accompagnées.

2868 appels concernant des femmes victimes de violences conjugales dont :
1820 appels de femmes toutes confondues dont 533 concernaient des femmes qui appelaient pour la première fois (écoute, informations, orientation, rendez-vous)
864 appels de partenaires (travailleurs sociaux et travailleuses sociales, médecins, avocats etc.)
184 appels de tiers (famille, ami.es, voisin.es).

Les chiffres concernant les activités proposées par des bénévoles de l’association à l’attention des femmes en 2018 :

92 accès au vestiaire, 60 cours de français, 6 après-midis shiatsu, 6 ateliers cuisine, 6 ateliers arts plastiques, 5 ateliers coiffure-maquillage, 7 sorties (spectacles aux 2 Scènes, concerts, weekend à Métabief, lac d’Osselle, marché de Montbéliard).
Les bénévoles élu.es par les adhérent.es au conseil d’administration sont responsables du bon fonctionnement de l’association et de ses services.",
  charity: solidarites_femmes
  )

nous_toutes_project = Project.create!(
  title: "Formations #NousToutes",
  content: "Les formations #NousToutes ont pour objectif de vous donner des éléments de base sur la question des violences sexistes et sexuelles : définitions, chiffres clés, mécanismes des violences, que dire à une victime ?

Ces formations durent 2h30 et sont gratuites.

Elles se tiennent sur Zoom. Chaque formation peut accueillir jusqu’à 1000 personnes.

→ Pour participer, il suffit de choisir votre date et de remplir un formulaire. Vous recevrez un mail avec le lien Zoom pour rejoindre la formation.",
  date: "2020-11-20",
  charity: nous_toutes)


puts "Seed created!"
puts "------------------------------------"
