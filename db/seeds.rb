# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'uri'

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
    description: "Fondation Le Refuge is a French state-approved foundation whose mission is to offer temporary accommodation and social, medical, psychological and legal support to young boys and girls of legal age who are victims of homophobia and transphobia, including within the framework of their own family.",
    address: "Montpellier, France",
    category: "LGBT+",
    website:"https://www.le-refuge.org/",
    video: "https://www.youtube.com/embed/LxGzLfOkIYg"
    )

le_refuge_logo = URI.open('https://upload.wikimedia.org/wikipedia/commons/4/41/Logo_de_la_Fondation_Le_Refuge.jpg')
le_refuge.photos.attach(io: le_refuge_logo, filename: '#{le_refuge.name}.jpg', content_type: 'image/jpg')
le_refuge.save!

le_refuge_photo = URI.open('https://pbs.twimg.com/media/En3GAxGXUAsfXzM?format=jpg&name=large')
le_refuge.photos.attach(io: le_refuge_photo, filename: '#{le_refuge.name}photo.jpg', content_type: 'image/jpg')
le_refuge.save!

osez_le_feminisme = Charity.create!(
    name: "0sez le féminisme",
    description: "Osez le féminisme! is an association founded in 2009 to raise the level of feminism in society, and to contribute to the fight against gender inequality. We organize awareness campaigns on gender equality, distribute a newspaper sent to our members, organize weekends of activist training, intervene in the public debate, to advance women's rights. We have 26 branches throughout France. We are members of the High Committee for Equality since 2013.",
    address: "Paris, France",
    category: "Feminist",
    website:"http://osezlefeminisme.fr/",
    video: "https://www.youtube.com/embed/O8czZH6dYt8",
    )

osez_le_feminisme_logo = URI.open('https://scontent-cdg2-1.xx.fbcdn.net/v/t1.0-9/126430517_10158848310339510_1482260284427430573_n.png?_nc_cat=111&ccb=2&_nc_sid=85a577&_nc_ohc=_6pJllLsrjsAX801DDc&_nc_ht=scontent-cdg2-1.xx&oh=8fea265297acd3e131e367c12e51a0d7&oe=5FE86E8A')
osez_le_feminisme.photos.attach(io: osez_le_feminisme_logo, filename: '#{osez_le_feminisme.name}.jpg', content_type: 'image/jpg')
osez_le_feminisme.save!


osez_le_feminisme_photo = URI.open('https://pbs.twimg.com/media/EKEFElMXkAEkVPv.jpg')
osez_le_feminisme.photos.attach(io: osez_le_feminisme_photo, filename: '#{osez_le_feminisme.name}photo.jpg', content_type: 'image/jpg')
osez_le_feminisme.save!

causette = Charity.create!(
    name: "Causette",
    description: "Causette magazine appeared on newsstands on March 8, 2009. It has a circulation of 20,000 copies and is distributed throughout France by subscription. Initially bimonthly, the magazine has been published every month since September 2011. In February 2012 Causette became the first and only women's magazine declared a publication of political and general interest by the Ministry of Culture.",
    address: "Paris France",
    category: "Feminist",
    website:"https://www.causette.fr/",
    video:"https://player.vimeo.com/video/154063467",
    )

causette_logo = URI.open("https://scontent-cdg2-1.xx.fbcdn.net/v/t1.0-9/29133315_1911830475503144_3564836144684385822_n.png?_nc_cat=111&ccb=2&_nc_sid=85a577&_nc_ohc=bWQVDPCTXr4AX_kRm4A&_nc_ht=scontent-cdg2-1.xx&oh=c7437c34bd4d9340ed6cf826c4385808&oe=5FE99385")
causette.photos.attach(io: causette_logo, filename: '#{causette.name}.jpg', content_type: 'image/jpg')
causette.save!

causette_photo = URI.open("https://www.causette.fr/wp-content/uploads/2020/10/CAUSETTE-116-COUVsanscode-bassedef.jpg")
causette.photos.attach(io: causette_photo, filename: '#{causette.name}photo.jpg', content_type: 'image/jpg')
causette.save!

solidarites_femmes = Charity.create!(
    name: "Solidarités femmes",
    description: "Solidarité Femmes is a network of associations specializing in the reception, support and accommodation of women victims of violence.",
    address: "Paris, France",
    category: "Domestic violence",
    website:"https://www.solidaritefemmes.org/",
    video: "https://www.youtube.com/embed/YExYbh4ly38?list=PLrfXq2BsNVaBmnJ5hD6mwsssDXm4G5kzX"
    )

solidarites_femmes_logo = URI.open('https://ideas.asso.fr/wp-content/uploads/2019/07/LogoFNSF-profilTW2.png')
solidarites_femmes.photos.attach(io: solidarites_femmes_logo, filename: '#{solidarites_femmes.name}.jpg', content_type: 'image/jpg')
solidarites_femmes.save!

solidarites_femmes_photo = URI.open('https://cdn.radiofrance.fr/s3/cruiser-production/2019/11/323bc993-0436-4afd-ad3a-052946fa28a0/870x489_maxstockworld393348_2.jpg')
solidarites_femmes.photos.attach(io: solidarites_femmes_photo, filename: '#{solidarites_femmes.name}photo.jpg', content_type: 'image/jpg')
solidarites_femmes.save!

nous_toutes = Charity.create!(
    name: "Collectif Nous toutes",
    description: "The collective #NousToutes is a feminist collective committed against sexist, sexual, economic, psychological, verbal and physical violence against women. It brings together individuals, associations, trade unions and political organizations.",
    address: "Paris, France",
    category: "Feminist",
    website:"https://www.noustoutes.org/",
    video: "https://www.youtube.com/embed/ppev6jw4tFc"
    )

nous_toutes_logo = URI.open('https://pbs.twimg.com/profile_images/1017339129691037696/54oU7ppZ_400x400.jpg')
nous_toutes.photos.attach(io: nous_toutes_logo, filename: '#{nous_toutes.name}.jpg', content_type: 'image/jpg')
nous_toutes.save!

nous_toutes_photo = URI.open('https://medias.liberation.fr/photo/1174845-prodlibe.jpg?modified_at=1543084700&width=960')
nous_toutes.photos.attach(io: nous_toutes_photo, filename: '#{nous_toutes.name}photo.jpg', content_type: 'image/jpg')
nous_toutes.save!

happy_period = Charity.create!(
    name: "Happy Period",
    description: "Periods are something anyone with a uterus experiences, and while it can be annoying for many, it’s a real problem for the homeless and anyone else without access to supplies. Happy Period builds kits for distribution and gets the community involved to help destigmatize periods and raise awareness.",
    address: "Los Angeles, USA",
    category: "Feminist",
    website:"https://hashtaghappyperiod.org/",
    video: "https://www.youtube.com/embed/goBUjr5-dRA"
    )

happy_period_logo = URI.open('https://pbs.twimg.com/profile_images/1268936001084207104/PD3UAlDI_400x400.jpg')
happy_period.photos.attach(io: happy_period_logo, filename: '#{happy_period.name}.jpg', content_type: 'image/jpg')
happy_period.save!

happy_period_photo = URI.open('https://scontent-cdt1-1.xx.fbcdn.net/v/t1.0-9/67565688_1286275891543913_8374501832751316992_o.jpg?_nc_cat=109&ccb=2&_nc_sid=dd9801&_nc_ohc=kmiYTmdwDCYAX95tGIS&_nc_ht=scontent-cdt1-1.xx&oh=b9e14506b20f0e712afc0f107c3aa107&oe=5FE9801A')
happy_period.photos.attach(io: happy_period_photo, filename: '#{happy_period.name}photo.jpg', content_type: 'image/jpg')
happy_period.save!

pro_mujer = Charity.create!(
    name: "Pro Mujer",
    description: "This organization for women in South and Central America provides resources like financial services, business and leadership training, and health care, so women can break free from poverty’s vicious cycle. Pro Mujer was founded in 1990 based on microlending, and became a major force for women’s development.",
    address: "Mexico, Mexico",
    category: "Feminist",
    website:"https://promujer.org/",
    video: "https://player.vimeo.com/video/331079073"
    )

pro_mujer_logo = URI.open('https://pbs.twimg.com/profile_images/930202066680606720/7zY1yL0t_400x400.jpg')
pro_mujer.photos.attach(io: pro_mujer_logo, filename: '#{pro_mujer.name}.jpg', content_type: 'image/jpg')
pro_mujer.save!

pro_mujer_photo = URI.open('https://promujer.org/content/uploads/2020/02/headerhomeok30engmob.jpg')
pro_mujer.photos.attach(io: pro_mujer_photo, filename: '#{pro_mujer.name}photo.jpg', content_type: 'image/jpg')
pro_mujer.save!

world_pulse = Charity.create!(
    name: "World Pulse",
    description: "With a decade of experience using the power of technology to grow women’s leadership across the globe, we've created a safe digital refuge where women unite to courageously tell their stories, share resources, start businesses, run for office, and launch movements. Together, we’re creating a world — both online and off — where all women thrive.",
    address: "Portland, Oregon, USA",
    category: "Feminist",
    website:"https://www.worldpulse.com/",
    video: "https://player.vimeo.com/video/301671001"
    )

world_pulse_logo = URI.open('https://scontent-cdt1-1.xx.fbcdn.net/v/t1.0-9/15094289_10154508048795041_6149651786243851136_n.png?_nc_cat=101&ccb=2&_nc_sid=85a577&_nc_ohc=mmfstdQKijsAX-BZPFC&_nc_ht=scontent-cdt1-1.xx&oh=d2bbf2ae7466be85a91e5eb97f7b65eb&oe=5FE8C47B')
world_pulse.photos.attach(io: world_pulse_logo, filename: '#{world_pulse.name}.jpg', content_type: 'image/jpg')
world_pulse.save!

world_pulse_photo = URI.open('https://world-pulse.s3.amazonaws.com/Jensine_plus_3_d1c2a9e64d.jpeg')
world_pulse.photos.attach(io: world_pulse_photo, filename: '#{world_pulse.name}photo.jpg', content_type: 'image/jpg')
world_pulse.save!

london_gaymers = Charity.create!(
    name: "London Gaymers",
    description: "London Gaymers is the UK’s biggest LGBT+ gaymer community. London Gaymers was established in 2012 as a social group to help LGBT+ gamers in London to find and make new friends in a safe and welcoming environment. Since then we have continued to grow into a thriving gaymer community. We hold regular meet ups every month, online tournaments and have an active Discord server where you’ll find other gaymers to play with. We always ensure we retain the friendly and accepting values that make London Gaymers such a great place to hang out and meet new people.",
    address: "London, UK",
    category: "LGBT+",
    website:"https://www.londongaymers.co.uk/",
    video: "https://player.vimeo.com/video/362782122"
    )

lg_logo = URI.open('https://scontent-cdt1-1.xx.fbcdn.net/v/t31.0-8/19477731_1329797300406924_685468511506910776_o.png?_nc_cat=106&ccb=2&_nc_sid=174925&_nc_ohc=cQB6RtvsKAYAX-DY3v3&_nc_ht=scontent-cdt1-1.xx&oh=fd25ebe55106de14bfe9090d6fcc8649&oe=5FE7DDFF')
london_gaymers.photos.attach(io: lg_logo, filename: '#{london_gaymers.name}.jpg', content_type: 'image/jpg')
london_gaymers.save!

lg_photo = URI.open('https://img.redbull.com/images/c_limit,w_1500,h_1000,f_auto,q_auto/redbullcom/2018/10/10/88b9e15a-f847-4af9-a28c-baeb3256ae52/london-gaymers')
london_gaymers.photos.attach(io: lg_photo, filename: '#{london_gaymers.name}photo.jpg', content_type: 'image/jpg')
london_gaymers.save!

girls_who_code = Charity.create!(
    name: "Girls Who Code",
    description: "Girls Who Code is a nonprofit organization which aims to support and increase the number of women in computer science by equipping young women with the necessary computing skills to pursue 21st century opportunities.",
    address: "New-York NY, USA",
    category: "Feminist",
    website:"https://girlswhocode.com/",
    video: "https://www.youtube.com/embed/UQanaiSxQqw"
    )

girls_who_code_logo = URI.open('https://pbs.twimg.com/profile_images/1256217094745657344/G8Byq6Ws_400x400.jpg')
girls_who_code.photos.attach(io: girls_who_code_logo, filename: '#{girls_who_code.name}.jpg', content_type: 'image/jpg')
girls_who_code.save!


girls_who_code_photo = URI.open('https://girlswhocode.com/assets/images/craft-prod/images/3-2/_1200x800_crop_center-center_82_line/2132/campus_wagner_31.jpg.webp')
girls_who_code.photos.attach(io: girls_who_code_photo, filename: '#{girls_who_code.name}photo.jpg', content_type: 'image/jpg')
girls_who_code.save!

marsha_pj_inst = Charity.create!(
    name: "The Marsha P. Johnson Institute",
    description: "The Marsha P. Johnson Institute defends the rights of Black transgender people all over. This type of service is needed right now. Johnson was a crucial piece of the Stonewall uprising in 1969 and lives on as an important part of BIPOC LGBTQ+ history.",
    address: "Richmond, California, USA",
    category: "LGBT+",
    website:"https://marshap.org/",
    video: "https://player.vimeo.com/video/481897613?color=f3ba16&title=0&byline=0&portrait=0"
    )

marsha_logo = URI.open('https://pbs.twimg.com/profile_images/1240662361477992448/zN5M2k4x_400x400.jpg')
marsha_pj_inst.photos.attach(io: marsha_logo, filename: '#{marsha_pj_inst.name}.jpg', content_type: 'image/jpg')
marsha_pj_inst.save!


marsha_photo = URI.open('https://marshap.org/wp-content/uploads/2019/06/marshap-illo.jpg')
marsha_pj_inst.photos.attach(io: marsha_photo, filename: '#{marsha_pj_inst.name}photo.jpg', content_type: 'image/jpg')
marsha_pj_inst.save!

every_mother_counts = Charity.create!(
    name: "Every Mother Counts",
    description: "Every Mother Counts works to make pregnancy and childbirth safe for every mother, everywhere. We raise awareness, invest in solutions and mobilize aciton.",
    address: "New York NY, USA",
    category: "Feminist",
    website:"https://everymothercounts.org/",
    video: "https://www.youtube.com/embed/2rghfSwj8tU"
    )

every_mother_logo = URI.open('https://scontent-cdt1-1.xx.fbcdn.net/v/t1.0-9/45513361_1982139005167505_6141686629212880896_o.jpg?_nc_cat=105&ccb=2&_nc_sid=85a577&_nc_ohc=NEEoJSbAQ-MAX8owSuf&_nc_ht=scontent-cdt1-1.xx&oh=48e3da58723bf2a654cb0bd6491e986d&oe=5FEA87A0')
every_mother_counts.photos.attach(io: every_mother_logo, filename: '#{every_mother_counts.name}.jpg', content_type: 'image/jpg')
every_mother_counts.save!

every_mother_photo = URI.open('https://pbs.twimg.com/profile_banners/285681923/1602474243/1500x500')
every_mother_counts.photos.attach(io: every_mother_photo, filename: '#{every_mother_counts.name}photo.jpg', content_type: 'image/jpg')
every_mother_counts.save!

orchid_project = Charity.create!(
    name: "Orchid Project",
    description: "Orchid Project is a British charity which works to end to female genital cutting. Orchid Project is based in London and primarily works to advocate for increased resources towards ending FGC and raising awareness about how the practice can end.",
    address: "London, UK",
    category: "Feminist",
    website:"https://www.orchidproject.org/",
    video: "https://www.youtube.com/embed/19fcxg75SIw"
    )

op_logo = URI.open('https://scontent-cdg2-1.xx.fbcdn.net/v/t1.0-9/10298776_1155681691124582_5417372005681807827_n.jpg?_nc_cat=108&ccb=2&_nc_sid=85a577&_nc_ohc=o94wEC9TiPEAX8ikXn7&_nc_ht=scontent-cdg2-1.xx&oh=218cd68b7495afc6c3452b146d4ef97d&oe=5FEC3425')
orchid_project.photos.attach(io: op_logo, filename: '#{orchid_project.name}.jpg', content_type: 'image/jpg')
orchid_project.save!


op_photo = URI.open('https://pbs.twimg.com/media/ElBv5UOXgAA5jwg?format=jpg&name=large')
orchid_project.photos.attach(io: op_photo, filename: '#{orchid_project.name}photo.jpg', content_type: 'image/jpg')
orchid_project.save!


dress_for_success = Charity.create!(
    name: "Dress For Success",
    description: "The mission of Dress for Success is to empower women to achieve economic independence by providing a network of support, professional attire and the development tools to help women thrive in work and in life.",
    address: "New York NY, USA",
    category: "Feminist",
    website:"https://dressforsuccess.org/",
    video: "https://www.youtube.com/embed/cpJOSXdZ3Bs"
    )

dress_logo = URI.open('https://pbs.twimg.com/profile_images/2857266807/ae0282a5d0eb825fa613ab02f01ad884_400x400.jpeg')
dress_for_success.photos.attach(io: dress_logo, filename: '#{dress_for_success.name}.jpg', content_type: 'image/jpg')
dress_for_success.save!

dress_photo = URI.open('https://dressforsuccess.org/wp-content/themes/dfs/library/images//about-us/about-us-who-we-are-resized.jpg')
dress_for_success.photos.attach(io: dress_photo, filename: '#{dress_for_success.name}photo.jpg', content_type: 'image/jpg')
dress_for_success.save!


gnb = Charity.create!(
    name: "Girls Not Brides",
    description: "Girls Not Brides: The Global Partnership to End Child Marriage is an international non-governmental organization with the mission to end child marriage throughout the world. The organization was created by The Elders to enable small groups from around the world to address the common issue of early marriage.",
    address: "London, UK",
    category: "Feminist",
    website:"https://www.girlsnotbrides.org/",
    video: "https://www.youtube.com/embed/hSn0cFM1ebU"
    )

gnb_logo = URI.open('https://pbs.twimg.com/profile_images/752782027448020993/txV3-cFF_400x400.jpg')
gnb.photos.attach(io: gnb_logo, filename: '#{gnb.name}.jpg', content_type: 'image/jpg')
gnb.save!

gnb_photo = URI.open('https://pbs.twimg.com/profile_banners/360046324/1531212484/1500x500')
gnb.photos.attach(io: gnb_photo, filename: '#{gnb.name}photo.jpg', content_type: 'image/jpg')
gnb.save!

puts "Creating articles..."
puts "------------------------------------"

le_refuge_article = Article.create!(
  title: "The foundation le refuge calls for solidarity during lockdown.",
  date: '2020-11-18',
  url: "https://www.le-refuge.org/actu/communique-la-fondation-le-refuge-appelle-a-la-solidarite-pendant-le-confinement.html",
  charity_id: le_refuge.id,
  content: "Fondation Le Refuge is launching its winter donation campaign to allow its teams to support young LGBT+ youth rejected by their loved ones because of their sexual orientation or gender. With 500 euros, Le Refuge will shelter, feed and accompany two young people for one month...")

le_refuge_article_photo = URI.open('https://www.le-refuge.org/wp-content/uploads/2020/11/le-refuge_appel_aux_dons_2020-1155x570.jpg')
le_refuge_article.photo.attach(io: le_refuge_article_photo, filename: '#{le_refuge_article.title}.jpg', content_type: 'image/jpg')
le_refuge_article.save!

le_refuge_article_two = Article.create!(
  title: "DECEMBER 1 - FRED COLBY: THANK YOU! - LE REFUGE FOUNDATION",
  date: '2020-12-01',
  url: "https://www.le-refuge.org/actu/1er-decembre-fred-colby-merci.html",
  charity_id: le_refuge.id,
  content: "A moving testimony,
Fred Colby tells his story, after all classic in our homo journey, without complex or tongue in cheek but with a touching truth.
And yes HIV can happen to anyone: especially when you start your sex life....")

le_refuge_article_photo_two = URI.open('https://www.le-refuge.org/wp-content/uploads/2020/12/fred-colby-serophobie-serofierte-1155x570.jpg')
le_refuge_article_two.photo.attach(io: le_refuge_article_photo_two, filename: '#{le_refuge_article_two.title}.jpg', content_type: 'image/jpg')
le_refuge_article_two.save!


osez_le_feminisme_article = Article.create!(
  title: "Send this open letter to the government to end impunity.",
  date: '2020-11-20',
  url: "http://osezlefeminisme.fr/envoyez-cette-lettre-ouverte-au-gouvernement-pour-que-cesse-limpunite-justicepourl/",
  charity_id: osez_le_feminisme.id,
  content: "The Criminal Chamber of the Court of Cassation denied the victim the qualification of rape on the pretext that the penetrations had not been 'sufficiently deep'...")

osez_le_feminisme_article_photo = URI.open('https://static.lexpress.fr/medias_11939/w_2048,h_1146,c_crop,x_0,y_68/w_480,h_270,c_fill,g_north/v1546594964/des-manifestants-portent-une-banderole-femmes-battues-justice-complice-assez-lors-d-un-rassemblement-organise-par-l-actrice-muriel-robin-contre-les-violences-faites-aux-femmes-le-6-octobre-2018-a-paris_6112940.jpg')
osez_le_feminisme_article.photo.attach(io: osez_le_feminisme_article_photo, filename: '#{osez_le_feminisme_article.title}.jpg', content_type: 'image/jpg')
osez_le_feminisme_article.save!

osez_le_feminisme_article_two = Article.create!(
  title: "#25 November: The fight to end male violence continues!.",
  date: '2020-11-25',
  url: "https://osezlefeminisme.fr/25novembre-la-lutte-pour-lelimination-des-violences-masculines-continue/",
  charity_id: osez_le_feminisme.id,
  content: "
As every year, on November 25, the international day against male violence, we are outraged by the figures: 225,000 women victims of domestic violence, 94,000 women victims of rape, 165,000 minors victims of child rape, 40,000 women in prostitution, 146 women victims of feminicides...")

osez_le_feminisme_article_photo_two = URI.open('https://osezlefeminisme.fr/wp-content/uploads/2020/11/Capture-d%E2%80%99e%CC%81cran-2020-11-24-a%CC%80-11.15.24-601x445.png')
osez_le_feminisme_article_two.photo.attach(io: osez_le_feminisme_article_photo_two, filename: '#{osez_le_feminisme_article_two.title}.jpg', content_type: 'image/jpg')
osez_le_feminisme_article_two.save!


causette_article = Article.create!(
  title: "Violence against women: is 3919 in danger?",
  date: '2020-11-21',
  url: "https://www.causette.fr/societe/en-france/violences-faites-aux-femmes-le-3919-en-danger/",
  charity_id: causette.id,
  content: "To extend the hours of the hotline dedicated to women victims of violence, the government wants to launch a public market. A decision that alarms the National Federation for Women Solidarity (FNSF), which has been in charge of the line since its creation...")

causette_article_photo = URI.open('https://intermountainhealthcare.org/-/media/images/modules/blog/posts/2020/04/intimate-partner-violence.jpg?mw=1600')
causette_article.photo.attach(io: causette_article_photo, filename: '#{causette_article.title}.jpg', content_type: 'image/jpg')
causette_article.save!

causette_article_two = Article.create!(
  title: "Anne Sylvestre's ideal female playlist",
  date: '2020-11-20',
  url: "https://www.causette.fr/culture/musique/la-playlist-feminine-ideale-danne-sylvestre",
  charity_id: causette.id,
  content: "We know her funny or serious texts, but always poetic and engaged. Much less its talent scout side. For Causette, she tells about the artists she discovered - here in a cabaret, there in a bistro - and whom she presents as sisters or cousins ...")

causette_article_photo_two = URI.open('https://images.genius.com/33e0c966cda25aef637cb95580f4b2be.865x865x1.jpg')
causette_article_two.photo.attach(io: causette_article_photo_two, filename: '#{causette_article_two.title}.jpg', content_type: 'image/jpg')
causette_article_two.save!


solidarites_femmes_article = Article.create!(
  title: "The TOMBOY label supports Solidarité Femmes",
  date: '2020-11-20',
  url: "https://www.solidaritefemmes.org/actualites/le-label-tomboy-soutient-solidarite-femmes",
  charity_id: solidarites_femmes.id,
  content: "For the first edition of its TOMBOY CARITATIF project, the label is mobilizing alongside the Fédération Nationale Solidarité Femmes.
Exclusively for this collaboration, TOMBOY proposes a rewriting of its signature t-shirt, limited to 250 copies...")

solidarites_femmes_article_photo = URI.open('http://www.solidaritefemmes.org/upload/_medium/tomboy2.JPG')
solidarites_femmes_article.photo.attach(io: solidarites_femmes_article_photo, filename: '#{solidarites_femmes_article.title}.jpg', content_type: 'image/jpg')
solidarites_femmes_article.save!

solidarites_femmes_article_two = Article.create!(
  title: "Domestic violence: 'Take the plunge, we will accompany you'",
  date: '2020-11-25',
  url: "https://www.dna.fr/societe/2020/11/24/violences-domestiques-franchissez-le-cap-nous-vous-accompagnerons",
  charity_id: solidarites_femmes.id,
  content: "The departmental association Solidarité Femmes 68 marks 30 years of action towards women and children who are victims of domestic and intra-family violence. In Saint-Louis, it perpetuates its structure and professionalises it today through new operations and tools...")

solidarites_femmes_article_photo_two = URI.open('http://www.helloasso.com/assets/img/photos/33698.jpg?format=mediaslider')
solidarites_femmes_article_two.photo.attach(io: solidarites_femmes_article_photo_two, filename: '#{solidarites_femmes_article_two.title}.jpg', content_type: 'image/jpg')
solidarites_femmes_article_two.save!


nous_toutes_article = Article.create!(
  title: "#21novembre schedule",
  date: '2020-11-18',
  url: "https://www.noustoutes.org/21novembre/",
  charity_id: nous_toutes.id,
  content: "Saturday, November 21, #WeAll calls for a day of mobilization, online, to say stop to gender-based and sexual violence, denounce impunity and the lack of ambition of public authorities...")

nous_toutes_article_photo = URI.open('https://www.anousparis.fr/app/uploads/2018/11/Femmes2-e1543233823293.jpg')
nous_toutes_article.photo.attach(io: nous_toutes_article_photo, filename: '#{nous_toutes_article.title}.jpg', content_type: 'image/jpg')
nous_toutes_article.save!

nous_toutes_article_two = Article.create!(
  title: "Gender-based and sexual violence: the Nous tous collective is organizing an online mobilization",
  date: '2020-11-21',
  url: "https://www.francebleu.fr/infos/societe/violences-sexistes-et-sexuelles-le-collectif-nous-toutes-organise-une-mobilisation-en-ligne-1605945098",
  charity_id: nous_toutes.id,
  content: "No marches bringing together tens of thousands of people, as in 2019: this year, because of the coronavirus, the #NousToutes collective is mobilizing online to fight against sexual and gender-based violence.
...")

nous_toutes_article_photo_two = URI.open('https://cdn.radiofrance.fr/s3/cruiser-production/2020/11/8dcbb8e8-2eb1-4ef5-80f2-e7a995daa301/870x489_noustoutes.webp')
nous_toutes_article_two.photo.attach(io: nous_toutes_article_photo_two, filename: '#{nous_toutes_article_two.title}.jpg', content_type: 'image/jpg')
nous_toutes_article_two.save!


happy_period_article = Article.create!(
  title: "Happy period founder chelsea vonchaz on why she founded the organization and her period routine",
  date: '2020-11-25',
  url: "https://www.getrael.com/blogs/r-blog/happy-period-founder-chelsea-vonchaz-on-why-she-founded-the-organization-and-her-period-routine",
  charity_id: happy_period.id,
  content: "If there's anyone that loves and celebrates periods as much as we do, it's Chelsea VonChaz. She is the founder of Happy Period, an organization we partner with that provides menstrual hygiene kits to local women who are homeless, low-income, or living in poverty...")

happy_period_article_photo = URI.open('https://assets.entrepreneur.com/content/3x2/2000/20180817184958-chelsea-vonchaz.jpeg')
happy_period_article.photo.attach(io: happy_period_article_photo, filename: '#{happy_period_article.title}.jpg', content_type: 'image/jpg')
happy_period_article.save!

happy_period_article_two = Article.create!(
  title: "We can all help homeless women get the menstrual hygiene products they desperately need",
  date: '2016-11-25',
  url: "https://hellogiggles.com/lifestyle/can-help-homeless-women-get-menstrual-hygiene-products-desperately-need/#read",
  charity_id: happy_period.id,
  content: "When you see a homeless woman, I doubt the first thing that crosses your mind is whether she’s on her period. For most of us, actually, menstruation is the last thing we think about when we see someone who doesn’t have a home...")

happy_period_article_photo_two = URI.open('https://imgix.bustle.com/rehost/2016/9/14/3f72b32e-548f-4444-ab10-caaa9144b149.jpg?w=800&auto=format%2Ccompress&cs=srgb&q=70&fit=crop&crop=faces&dpr=2')
happy_period_article_two.photo.attach(io: happy_period_article_photo_two, filename: '#{happy_period_article_two.title}.jpg', content_type: 'image/jpg')
happy_period_article_two.save!

pro_mujer_article = Article.create!(
  title: "Celebrating 30 years empowering women in Latin America",
  date: '2020-11-20',
  url: "https://promujer.org/30-anniversary/",
  charity_id: pro_mujer.id,
  content: "For 30 years, Pro Mujer has been working hand in hand with women and our allies in Latin America to break the barriers that limit their potential- high rates of gender-based violence and teen pregnancy, migration crises, discrimination, lack of health care access to name a few....")

pro_mujer_article_photo = URI.open('https://borgenproject.org/wp-content/uploads/Pro-Mujer-845x675.jpg')
pro_mujer_article.photo.attach(io: pro_mujer_article_photo, filename: '#{pro_mujer_article.title}.jpg', content_type: 'image/jpg')
pro_mujer_article.save!

pro_mujer_article_two = Article.create!(
  title: "The 'Pro mujer' association gives a voice to women in Latin America",
  date: '2019-08-20',
  url: "https://information.tv5monde.com/terriennes/l-association-pro-mujer-donne-une-voix-aux-femmes-d-amerique-latine-306135",
  charity_id: pro_mujer.id,
  content: "Abortion prohibited and punishable by prison in some countries, women at the head of the poorest populations, access to health strewn with pitfalls: the condition of women is far from being in good shape on the South American continent...")

pro_mujer_article_photo_two = URI.open('https://bolivia.promujer.org/content/uploads/sites/6/2016/09/PM_santa_cruz_client_kitchen_wr.jpg')
pro_mujer_article_two.photo.attach(io: pro_mujer_article_photo_two, filename: '#{pro_mujer_article_two.title}.jpg', content_type: 'image/jpg')
pro_mujer_article_two.save!


world_pulse_article = Article.create!(
  title: "My Journey to Virtual Volunteering",
  date: '2020-11-20',
  url: "https://www.worldpulse.com/community/users/jcravens/posts/95840",
  charity_id: world_pulse.id,
  content: "My first exposure to computers was in a typing class in high school in 1983: half the class had typewriters, half had computers, and then we all switched to the other machine midway through the school year...")

world_pulse_article_photo = URI.open('https://www.good-deeds-day.org/wp-content/uploads/2020/03/virtual-volunteering-1.jpg')
world_pulse_article.photo.attach(io: world_pulse_article_photo, filename: '#{world_pulse_article.title}.jpg', content_type: 'image/jpg')
world_pulse_article.save!


world_pulse_article_two = Article.create!(
  title: "KENYA: I Grew Up Romanticizing America. Now I Mourn.",
  date: '2020-07-21',
  url: "https://www.worldpulse.com/voices-rising/stories/kenya-i-grew-romanticizing-america-now-i-mourn",
  charity_id: world_pulse.id,
  content: "Growing up in rural Kenya, two and a half hours outside of Nairobi, we spoke of America in reverent tones: America was generous. She was kind. She sent plenty of aid in corn oil and dried yellow corn to keep our bellies full in times of drought and famine....")

world_pulse_article_photo_two = URI.open('https://www.worldpulse.com/sites/default/files/styles/teaser_thumbnail/public/editorial/96055/hero/nini.jpg?itok=PTtTL1Oe')
world_pulse_article_two.photo.attach(io: world_pulse_article_photo_two, filename: '#{world_pulse_article_two.title}.jpg', content_type: 'image/jpg')
world_pulse_article_two.save!


london_gaymers_article = Article.create!(
  title: "The continuing importance of LGBT+ spaces in gaming.",
  date: '2020-06-26',
  url: "https://www.eurogamer.net/articles/2020-06-26-pride-week-down-and-out-in-orgrimmar-and-london",
  charity_id: london_gaymers.id,
  content: "Spend any amount of time on any popular gaming message board when the issue of LGBT+ representation raises its head, and you can guarantee there'll be someone waiting in the wings to, at the very least, remind LGBT+ players that it's 2020 and 'nobody cares they're gay anymore'...")

london_gaymers_article_photo = URI.open('https://s.abcnews.com/images/GMA/DigitalPrideCelebrations_v03_DAP_hpMain_16x9t_1600.jpg')
london_gaymers_article.photo.attach(io: london_gaymers_article_photo, filename: '#{london_gaymers_article.title}.jpg', content_type: 'image/jpg')
london_gaymers_article.save!

london_gaymers_article_two = Article.create!(
  title: "Meet the London collective amplifying the voices of LGBTQI+ gamers",
  date: '2018-04-19',
  url: "https://www.redbull.com/gb-en/meet-the-london-gaymers",
  charity_id: london_gaymers.id,
  content: "London Gaymers is a 3,000-strong community helping to change attitudes in gaming. Here, five regulars at their Stratford meet-ups explain just why the group is so vital...")

london_gaymers_article_photo_two = URI.open('https://blogmedia.evbstatic.com/wp-content/uploads/wpmulti/sites/8/2019/06/London-Gaymers-at-London-Pride-march-2018.png')
london_gaymers_article_two.photo.attach(io: london_gaymers_article_photo_two, filename: '#{london_gaymers_article_two.title}.jpg', content_type: 'image/jpg')
london_gaymers_article_two.save!


girls_who_code_article = Article.create!(
  title: "Groundbreaking Research From Girls Who Code and Accenture Outlines Steps to Double Women in Tech in 10 Years",
  date: '2020-11-20',
  url: "https://girlswhocode.com/news/groundbreaking-research-from-girls-who-code-and-accenture-outlines-steps-to-double-women-in-tech-in-10-years",
  charity_id: girls_who_code.id,
  content: "According to research, SHROs twice as likely as female employees to say that it is easy for women to thrive in tech

Joint report indicates that more inclusive company cultures could drop annual attrition rate of women in tech by 70 percent...")

girls_who_code_article_photo = URI.open('https://girlswhocode.com/assets/images/craft-prod/images/3-2/GWC-REPORT_COVER.jpg')
girls_who_code_article.photo.attach(io: girls_who_code_article_photo, filename: '#{girls_who_code_article.title}.jpg', content_type: 'image/jpg')
girls_who_code_article.save!

girls_who_code_article_two = Article.create!(
  title: "A Message from Girls Who Code CEO & COO: #BlackLivesMatter and the Fight for Racial Justice",
  date: '2020-06-01',
  url: "https://medium.com/@GirlsWhoCode/a-message-from-our-ceo-coo-blacklivesmatter-and-the-fight-for-racial-justice-92a370a1dd8a",
  charity_id: girls_who_code.id,
  content: "We are writing to you after a very challenging weekend, preceded by an extremely difficult period of time marked by intense violence─physical, psychological, and emotional. Like many of you, we are grieving, we are angry, and we are in pain...")

girls_who_code_article_photo_two = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Black_Lives_Matter_logo.svg/1200px-Black_Lives_Matter_logo.svg.png')
girls_who_code_article_two.photo.attach(io: girls_who_code_article_photo_two, filename: '#{girls_who_code_article.title}.jpg', content_type: 'image/jpg')
girls_who_code_article_two.save!


marsha_pj_inst_article = Article.create!(
  title: "No pride without liberation",
  date: '2020-11-20',
  url: "https://marshap.org/yahoo-news-heres-why-black-trans-women-are-essential-to-both-lgbtq-equality-and-black-lives-matter-movements/",
  charity_id: marsha_pj_inst.id,
  content: "This year, Pride month is taking place in the midst of a growing Black Lives Matter revolution — so there’s no better time to amplify the importance of trans Black lives, as was done last weekend in a massive show of support in Brooklyn and as will happen with a similar demonstration in London on Saturday. To keep it going, Yahoo Life spoke with some of the activists who have been advocating for Black trans visibility for years...")

marsha_pj_inst_article_photo = URI.open('https://marshap.org/wp-content/uploads/2020/06/pride_draft_1.jpg')
marsha_pj_inst_article.photo.attach(io: marsha_pj_inst_article_photo, filename: '#{marsha_pj_inst_article.title}.jpg', content_type: 'image/jpg')
marsha_pj_inst_article.save!

marsha_pj_inst_article_two = Article.create!(
  title: "Pyer Moss partners with Marsha P. Johnson Institute",
  date: '2020-11-20',
  url: "https://theglowup.theroot.com/the-category-is-alive-pyer-moss-partners-with-the-mar-1845716892",
  charity_id: marsha_pj_inst.id,
  content: "Pyer Moss is launching the third installment of “Exist to Resist”, the latest being in partnership with the Marsha P. Johnson Institute for Transgender Day of Remembrance. T limited-edition genderless T-shirt retails exclusively for 100 dollars on Pyer Moss’ website, featuring an image of Marsha P...")

marsha_pj_inst_article_photo_two = URI.open('https://fashionunited.uk/news/fashion/pyer-moss-partners-with-marsha-p-johnson-institute/2020112052128')
marsha_pj_inst_article_two.photo.attach(io: marsha_pj_inst_article_photo_two, filename: '#{marsha_pj_inst_article_two.title}.jpg', content_type: 'image/jpg')
marsha_pj_inst_article_two.save!

every_mother_article = Article.create!(
  title: "We all must be accountable.",
  date: '2020-11-20',
  url: "https://everymothercounts.org/on-the-front-lines/we-all-must-be-accountable/",
  charity_id: every_mother_counts.id,
  content: "In the week since the devastating death of George Floyd, we’ve borne witness to an unbelievable spectrum of emotions play out across our country. With despair pouring out from aching hearts everywhere, many of us find ourselves asking: where is the humanity?")

every_mother_article_photo = URI.open('https://thefoldmag.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTYzNzM2NjQxNDc4MDc2MzUz/image-2_christy_in_haiti.jpg')
every_mother_article.photo.attach(io: every_mother_article_photo, filename: '#{every_mother_article.title}.jpg', content_type: 'image/jpg')
every_mother_article.save!

every_mother_article_two = Article.create!(
  title: "Designers and Artists Come Together for an Auction Benefitting Maternal Health.",
  date: '2020-11-20',
  url: "https://www.vogue.com/article/art-for-mom-maternal-health-auction",
  charity_id: every_mother_counts.id,
  content: "One woman, every two minutes, dies from complications with pregnancy or childbirth. Read that again. One woman every two minutes. That is more than 700 women every day. Natalia Swarz learned this harsh reality after a 16-week pregnancy that resulted in a late miscarriage...")

every_mother_article_photo_two = URI.open('https://assets.vogue.com/photos/5fb055b1dc2f8779d6161819/master/w_2560%2Cc_limit/unnamed%252520(14).jpg')
every_mother_article_two.photo.attach(io: every_mother_article_photo_two, filename: '#{every_mother_article_two.title}.jpg', content_type: 'image/jpg')
every_mother_article_two.save!

orchid_project_article = Article.create!(
  title: "We all must be accountable.",
  date: '2020-10-20',
  url: "https://www.orchidproject.org/different-evidence-same-community-putting-female-genital-cutting-research-into-practice/",
  charity_id: orchid_project.id,
  content:"Translating research evidence into practice can be a protracted, complicated process.  We need sufficient funds to do it effectively, and have buy-in from those implementing the changes; changes that must be seen as acceptable and achievable by our target audiences.

Cultural, religious and gender-based sensitivities...")

orchid_project_article_photo = URI.open('https://www.orchidproject.org/wp-content/uploads/2019/02/005_low_res_DSC_3142.jpg')
orchid_project_article.photo.attach(io: orchid_project_article_photo, filename: '#{orchid_project_article.title}.jpg', content_type: 'image/jpg')
orchid_project_article.save!

orchid_project_article_two = Article.create!(
  title: "Women’s leadership, COVID-19 & female genital cutting",
  date: '2020-11-20',
  url: "https://www.orchidproject.org/womens-leadership-covid-19-female-genital-cutting/",
  charity_id: orchid_project.id,
  content:"This is the much quoted phrase from the beloved Ruth Bader Ginsburg; the trailblazing lawyer and justice of the Supreme Court of the United States who sadly passed away this week. She was an icon of women’s leadership who broke down barrier after barrier for the advancement of gender equality, and a personal hero of mine...")

orchid_project_article_photo_two = URI.open('https://www.orchidproject.org/wp-content/uploads/2020/09/Women_leadership_COVID_Female_Genital_Cutting_header-400x300.png')
orchid_project_article_two.photo.attach(io: orchid_project_article_photo_two, filename: '#{orchid_project_article_two.title}.jpg', content_type: 'image/jpg')
orchid_project_article_two.save!


dress_article = Article.create!(
  title: "Dress for Success Worldwide CEO Joi Gordon Discusses Going Virtual with ABC News",
  date: '2020-10-20',
  url: "https://dressforsuccess.org/news/dress-for-success-worldwide-ceo-joi-gordon-discusses-going-virtual-with-abc-news/",
  charity_id: dress_for_success.id,
  content:"Dress for Success Worldwide CEO Joi Gordon discusses providing virtual programming in response to the COVID-19 pandemic and how Dress for Success Oklahoma City plans to rebuild after being vandalized in the midst of nationwide civil unrest.")

dress_article_photo = URI.open('https://sanfordbernsteincenter.org/sites/default/files/civicrm/persist/contribute/images/Joi%20Gordon%20Dress%20for%20Success%20CEO%20Headshot.jpg')
dress_article.photo.attach(io: dress_article_photo, filename: '#{dress_article.title}.jpg', content_type: 'image/jpg')
dress_article.save!

dress_article_two = Article.create!(
  title: "Vionic Supports Dress for Success with a Charitable Partnership on Giving Tuesday",
  date: '2020-12-01',
  url: "https://www.prnewswire.com/news-releases/vionic-supports-dress-for-success-with-a-charitable-partnership-on-giving-tuesday-301182829.html",
  charity_id: dress_for_success.id,
  content:"On December 1, Vionic will donate one percent of gross sales from vionicshoes.com to benefit the national chapter of Dress for Success, assisting women across the U.S. This will be followed by additional initiatives throughout the 2020 holiday season benefitting Dress for Success' San Francisco chapter.")

dress_article_photo_two = URI.open('https://i.pinimg.com/280x280_RS/26/65/c9/2665c9680d7110ee4d6d52d8810ea563.jpg')
dress_article_two.photo.attach(io: dress_article_photo_two, filename: '#{dress_article_two.title}.jpg', content_type: 'image/jpg')
dress_article_two.save!

gnb_article = Article.create!(
  title: "We are not longer alone",
  date: '2020-10-20',
  url: "https://www.girlsnotbrides.org/girls-adolescents-young-women-and-injustice-in-lac/",
  charity_id: gnb.id,
  content:"I still remember when I was a girl – small, taciturn and shy – slipping unnoticed through the crowd. From that small child, I’ve grown into a woman who knows the strength of her own voice, and who speaks out against injustices.

Being around and learning from other women has been key to my personal development and liberation, helping me to feel I belong to a group and know that – even from a distance – my friends stand with me in the struggle...

")

gnb_article_photo = URI.open('https://www.girlsnotbrides.org/wp-content/uploads/2020/11/Jovenas-Latidas_Ketzali-768x768.png')
gnb_article.photo.attach(io: gnb_article_photo, filename: '#{gnb_article.title}.jpg', content_type: 'image/jpg')
gnb_article.save!


gnb_article_two = Article.create!(
  title: "RESOURCES TO HELP DURING COVID-19: OUR TOP RECOMMENDED ACROSS HEALTH, EDUCATION, HUMANITARIAN CONTEXTS, ECONOMIC IMPACTS AND FUNDRAISING",
  date: '2020-10-29',
  url: "https://www.girlsnotbrides.org/resources-to-help-during-covid-19-recommended/",
  charity_id: gnb.id,
  content:"We know that girls and women – particularly among the poorest and socially marginalised groups – are the most affected by the ongoing pandemic. We need to work together as a partnership to make sure that girls at risk of child marriage and married girls are at the centre of the COVID-19 response and recovery efforts...")

gnb_article_photo_two = URI.open('https://gnb-test.imgix.net/wp-content/uploads/2020/05/puertobarrios_livingston_pmora274-1.jpg?crop=faces&w=901&h=506.8125&fit=crop&fm=pjpg')
gnb_article_two.photo.attach(io: gnb_article_photo_two, filename: '#{gnb_article_two.title}.jpg', content_type: 'image/jpg')
gnb_article_two.save!


puts "Creating supports..."
puts "------------------------------------"

Support.create!(user: antoine, charity: causette)

Support.create!(user: antoine, charity: osez_le_feminisme)

Support.create!(user: antoine, charity: le_refuge)

Support.create!(user: antoine, charity: world_pulse)

Support.create!(user: tristan, charity: solidarites_femmes)

Support.create!(user: tristan, charity: pro_mujer)

Support.create!(user: manon, charity: marsha_pj_inst)

Support.create!(user: manon, charity: london_gaymers)

Support.create!(user: manon, charity: girls_who_code)


puts "Creating projects..."
puts "------------------------------------"

le_refuge_project = Project.create!(
  title: "22 schemes and 187 accommodation places to give a new start to the young people hosted",
  date: '2020-11-17',
  content: "Established in the main cities of metropolitan France as well as in overseas France, the 22 reception facilities of Fondation Le Refuge offer young LGBT+ people in distress accommodation in apartments/rooming houses.

At the heart of the latter, multidisciplinary teams of salaried and/or volunteer staff are organized around different centers to provide the best possible support to young people in their life paths. This free accompaniment consists of psychological support, weekly individual appointments with a social worker, and participation in various workshops and permanent staff.

These common times aim to develop their skills or know-how in various fields (managing a budget, cooking, writing CVs, cover letters...) as well as to provide them with moments of escape (cultural outings, hikes, shared meals, creative workshops, coffee-philosophy...).",
  charity: le_refuge)

osez_le_feminisme_project = Project.create!(
  title: "FéministCamp",
  date: '2020-11-19',
  content:"Because feminism goes hand in hand with continuous learning and development, we wish, since our creation in 2009, to offer the maximum number of women, activists or not, moments of training, and benevolent and sorority sharing.

This is why we organize twice a year feminist training weekends: Open to all our members, these weekends bring together more than 150 feminists from all over France, in the Maison Familiale et Rurale of Rambouillet in the suburbs of Paris. The program runs from Saturday to Sunday in four stages of workshops - which you can choose from more than twenty themes, as varied as economic violence, the porn-prostitute system, the injunction to couples and motherhood, lesbian struggles, the history of feminism and our heritage, and racialized women, Inclusive writing... Offered by our volunteer activists, who may be accompanied by outside speakers or friendly associations, these workshops allow us to deconstruct sexist stereotypes and analyze all the mechanisms of the male violence continuum, in order to arm ourselves to collectively fight against patriarchy. There are so many locks to blow and triggers to provoke, that these training times are always rich and important!

Lodging and meals are included in the registration fee, and Saturday evening is an opportunity to get together around feminist games and stands, as well as to sing along (always feminist!) with a collective karaoke! But also simply to relax and continue the always interesting and engaging exchanges... in any sorority!",
charity: osez_le_feminisme)

causette_project = Project.create!(
  title: "'C'est mon corps' digital meeting with Martin Winckler",
  date:'2020-10-05',
  content: "When it comes to women's health, there are no stupid or taboo issues, only legitimate issues. Martin Wincler, physician, feminist ally, youtubeur and author.

Causette offers you an exceptional evening of exchanges with the author, in the context of the release of his book C'est mon corps. Menstruation, contraception, pregnancy, obstetrical violence... Martin Winckler reviews in his new book all the questions we can ask ourselves and answers them with spirit and benevolence. It's your turn to ask him questions!

This virtual meeting on the Zoom platform will be hosted by Sarah Gandillot, editor-in-chief of Causette.",
charity: causette)

solidarites_femmes_project = Project.create!(
  title: "Figures of the association Solidarité Femmes Besançon",
  date: '2020-11-20',
  content: "243 women met for the first time (370 children exposed). They report :


psychological violence for 84%.
physical violence for 66%Figures of the association Solidarité Femmes Besançon
economic violence for 26%.
sexual violence for 23%.
administrative violence for 11%.
harassment after separation for 14%.
105 women accompanied outside the shelter beyond an interview (169 children exposed).



621 visits by women to the day care center, all combined.

(1st contact, women in shelter or follow-up outside of shelter) for an interview, information, administrative procedures, search for emergency shelter, making an appointment, access to the checkroom, food bank.

23 women and 27 children housed in our CHRS and in emergency accommodation,

or 11,989 days of accommodation.

1068 appointments with accompanied women.

2868 calls concerning women victims of conjugal violence including :
1,820 calls from women all together, 533 of which concerned women calling for the first time (listening, information, orientation, appointments).
864 calls from partners (social workers, doctors, lawyers, etc.)
184 calls from third parties (family, friends, neighbors).

Figures concerning the activities proposed by volunteers of the association for women in 2018 :

92 access to the checkroom, 60 French classes, 6 shiatsu afternoons, 6 cooking workshops, 6 plastic arts workshops, 5 hair and make-up workshops, 7 outings (shows at the 2 Scènes, concerts, weekends in Métabief, Lac d'Osselle, Montbéliard market).
The volunteers elected by the members of the board of directors are responsible for the smooth running of the association and its services.",
  charity: solidarites_femmes
  )

nous_toutes_project = Project.create!(
  title: "#NousToutes trainings",
  content: "The #NousToutes trainings aim to give you basic elements on the issue of gender-based and sexual violence: definitions, key figures, mechanisms of violence, what to say to a victim?

These trainings last 2h30 and are free of charge.

They are held on Zoom. Each training can welcome up to 1000 people.",
  date: "2020-11-20",
  charity: nous_toutes)


puts "Seed created!"
puts "------------------------------------"
