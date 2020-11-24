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

tristan_search1 = Search.create!(content: "vacances en biélorussie", user: tristan)

tristan_search2 = Search.create!(content: "camping pas cher en biélorussie", user: tristan)

manon_search1 = Search.create!(content: "roswell zone 51", user: manon)


# puts "Creating charities..."
# puts "------------------------------------"

# le_refuge = Charity.create!(
#     name: "Le refuge",
#     description: "La Fondation Le Refuge est une fondation française conventionnée par l'État dont la vocation est d'offrir un hébergement temporaire et un accompagnement social, médical, psychologique et juridique aux jeunes garçons et filles majeurs, victimes d'homophobie et de transphobie."
#     address: "1 rue leclerc, Paris",
#     category: "lgbt"
#     )

# osez_le_feminisme = Charity.create!(
#     name: "0sez le féminisme",
#     description: "Osez le féminisme ! est une association loi de 1901 féministe française. À l'origine un journal dont le premier numéro est paru en juin 2009."
#     address: "2 rue mademoiselle, Paris",
#     category: "feminist"
#     )

# causette = Charity.create!(
#     name: "Causette",
#     description: "Causette est un magazine féminin français mensuel, créé par les Éditions Gynéthic, une maison d'édition indépendante fondée en janvier 2009 par Gregory Lassus-Debat et Gilles Bonjour."
#     address: "3 rue du chat, Paris",
#     category: "feminist"
#     )

# solidarites_femmes = Charity.create!(
#     name: "Solidarités femmes",
#     description: "Solidarité Femmes, c'est un réseau d'associations spécialisées dans l'accueil, l'accompagnement et l'hébergement des femmes victimes de violences."
#     address: "6 rue du soleil, Paris",
#     category: "domestic violence"
#     )

# puts "Creating articles..."
# puts "------------------------------------"

# le_refuge_article = Article.create!(
#   title: "Reconfinement: message de Nicolas Noguier, Président du Refuge"
#   url: "https://www.le-refuge.org/videos/reconfinement-message-de-nicolas-noguier-president-du-refuge.html"
#   charity: le_refuge)


# osez_le_feminisme_article = Article.new(
#   title: "Envoyez cette lettre ouverte au gouvernement pour que cesse l’impunité"
#   url: "http://osezlefeminisme.fr/envoyez-cette-lettre-ouverte-au-gouvernement-pour-que-cesse-limpunite-justicepourl/"
#   )
# osez_le_feminisme_article.charity = osez_le_feminisme
# osez_le_feminisme_article.save!

# causette_article = Article.new(
#   title: "Violences faites aux femmes : le 3919 en danger ?"
#   url: "https://www.causette.fr/societe/en-france/violences-faites-aux-femmes-le-3919-en-danger/"
#   )

# causette_article.charity = causette
# causette_article.save!

# solidarites_femmes_article = Article.new(
#   title: "Le label TOMBOY soutient Solidarité Femmes"
#   url: "https://www.solidaritefemmes.org/actualites/le-label-tomboy-soutient-solidarite-femmes"
#   )
# solidarites_femmes_article.charity = solidarites_femmes
# solidarites_femmes_article.save!
