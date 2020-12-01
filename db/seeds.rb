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
    video: "https://vimeo.com/vimeo/295607946"
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
  charity: le_refuge,
  content: "Fondation Le Refuge is launching its winter donation campaign to allow its teams to support young LGBT+ youth rejected by their loved ones because of their sexual orientation or gender. With 500 euros, Le Refuge will shelter, feed and accompany two young people for one month. The public can contribute to the Foundation's mission of public utility on le-refuge.org/urgence. In the 22 reception facilities of the Fondation Le Refuge, calls and requests for accommodation have been increasing since the beginning of the year. The urgency for the Foundation is to be operational for the winter, when a second period of lockdown has just opened. We have received 6,003 calls on the emergency line since January,' says Nicolas Noguier, President of Fondation Le Refuge. This represents a 15% increase in one year. Requests for accommodation have increased by 13% (801 received since January). 'Le Refuge has more than 16,000 donors to date: a crucial mobilization each year because private donations represent 80% of the Foundation's resources."
  )

osez_le_feminisme_article = Article.create!(
  title: "Send this open letter to the government to end impunity.",
  date: '2020-11-20',
  url: "http://osezlefeminisme.fr/envoyez-cette-lettre-ouverte-au-gouvernement-pour-que-cesse-limpunite-justicepourl/",
  charity: osez_le_feminisme,
  content: "The Criminal Chamber of the Court of Cassation denied the victim the qualification of rape on the pretext that the penetrations had not been 'sufficiently deep'. The Court thus added a new restrictive condition to the qualification of rape.
In a decision of October 14, 2020, the Court of Cassation required a victim who was 13 years old at the time of the events to justify the depth of the penetrations imposed by her father-in-law in order to qualify the rape.

However, the penal code does not require any requirement of depth. Judges invent law and ensure the impunity of child rapists.

How can we continue to demand that girls and women entrust their security, trust and reparation to a system that persists in denying them justice?

We have written an open letter so that you can send it to the government and demand justice for L.
You can copy the letter below:

Mr. President of the Republic,

Mr. Prime Minister,

Mr. Keeper of the Seals,

In a decision of October 14, 2020, the Criminal Chamber of the Court of Cassation created a new restrictive condition for the qualification of rape, going beyond its power of interpretation, ensuring even more impunity for rapists who are already only 1 percent (1) convicted for their crimes.

L. was 13 years old when his stepfather began to impose sexual acts on him. She describes the sexual violence that lasted several years, including penetrations with the tongue. Nevertheless, the trial judges required the victim to give details 'in terms of intensity, depth, duration or movement' failing which, according to these judges, this 'does not sufficiently characterize a voluntary introduction beyond the edge of the vagina, deep enough to characterize an act of penetration.'

The Court of Cassation, the highest court in the French judicial system, has validated this argument, going beyond the criteria required by the Penal Code to qualify a rape.

Indeed, article 222-23 of the Penal Code provides that 'any act of sexual penetration, of any nature whatsoever, committed on the person of another or on the person of the perpetrator by violence, coercion, threat or surprise is rape'. The criterion is therefore the act of penetration and not its depth; this case law makes the legal definition of rape in French law even more restrictive, even though it is already in violation of the Istanbul Convention because it is too restrictive.(2)

How can we continue to demand that girls and women entrust their safety, trust and reparation to a system that persists in denying them justice?

70 percent of complaints of rape of minors are dismissed.
52 percent of the complaints investigated are subsequently de-qualified and corrected.
0.3 per cent of rapes of minors are prosecuted for rape.(3)
We want an end to impunity for sexual violence.

This is urgent.")

causette_article = Article.create!(
  title: "Violence against women: is 3919 in danger?",
  date: '2020-11-21',
  url: "https://www.causette.fr/societe/en-france/violences-faites-aux-femmes-le-3919-en-danger/",
  charity: causette,
  content: "To extend the hours of the hotline dedicated to women victims of violence, the government wants to launch a public market. A decision that alarms the National Federation for Women Solidarity (FNSF), which has been in charge of the line since its creation.

This time, the threat is on their doorstep. For several months now, the National Federation for Women's Solidarity (FNSF) has been concerned about the willingness of the Ministry in charge of Equality between women and men to use a public contract to manage 3919, the hotline for women who are victims of violence. A few days before the publication of the specifications for this public contract, scheduled for before the end of the year, the federation is scandalized.")


solidarites_femmes_article = Article.create!(
  title: "The TOMBOY label supports Solidarité Femmes",
  date: '2020-11-20',
  url: "https://www.solidaritefemmes.org/actualites/le-label-tomboy-soutient-solidarite-femmes",
  charity: solidarites_femmes,
  content: "For the first edition of its TOMBOY CARITATIF project, the label is mobilizing alongside the Fédération Nationale Solidarité Femmes.
Exclusively for this collaboration, TOMBOY proposes a rewriting of its signature t-shirt, limited to 250 copies. The model has been on sale on the TOMBOY website since October 26th. 100% of the profits are donated to Solidarité Femmes.")

nous_toutes_article = Article.create!(
  title: "#21novembre schedule",
  date: '2020-11-18',
  url: "https://www.noustoutes.org/21novembre/",
  charity: nous_toutes,
  content: "Saturday, November 21, #WeAll calls for a day of mobilization, online, to say stop to gender-based and sexual violence, denounce impunity and the lack of ambition of public authorities.

On the program of this day of mobilization: trainings, actions of interpellation, lives with inspiring feminists and concerts!
Download and share these visuals on the social networks and don't forget to indicate the links to register.")

happy_period_article = Article.create!(
  title: "Happy period founder chelsea vonchaz on why she founded the organization and her period routine",
  date: '2020-11-25',
  url: "https://www.getrael.com/blogs/r-blog/happy-period-founder-chelsea-vonchaz-on-why-she-founded-the-organization-and-her-period-routine",
  charity: happy_period,
  content: "If there's anyone that loves and celebrates periods as much as we do, it's Chelsea VonChaz. She is the founder of Happy Period, an organization we partner with that provides menstrual hygiene kits to local women who are homeless, low-income, or living in poverty. Founded in 2015, Happy Period began as a movement in Downtown Los Angeles's Skid Row.

Like Rael, VonChaz and Happy Period believe no one should go without menstrual care and are on a mission to end the stigma around menstruation. That's precisely why we were excited to chat with VonChaz to learn more about how the organization came to be, her relationship with her period, and what Happy Period is working on next.

What sparked the idea to start Happy Period?

'I basically told all my girlfriends what I saw—a homeless woman bleeding through her pants. From there, it was a collaborative effort. My mom and I and five girlfriends pitched in on the idea. It kind of just came together like a huge puzzle within the span of a week or two. My mom came up with the name. One girlfriend was volunteering with another organization and we decided to come together to do a distribution day and then go by shelters. We just figured things out as we went. After the first donation, there was such a positive and overwhelming feeling that it led us to want to do it again. After four months of packing and going to shelters, I decided to create Happy Period as an official charity.'")

pro_mujer_article = Article.create!(
  title: "Celebrating 30 years empowering women in Latin America",
  date: '2020-11-20',
  url: "https://promujer.org/30-anniversary/",
  charity: pro_mujer,
  content: "For 30 years, Pro Mujer has been working hand in hand with women and our allies in Latin America to break the barriers that limit their potential- high rates of gender-based violence and teen pregnancy, migration crises, discrimination, lack of health care access to name a few. As we begin a new decade, it is time for us to look back on the past and reflect on what we have achieved collectively and where we must redirect our efforts. Our mandate is to become a large-scale sustainable platform that delivers relative and transformative tools and resources to women across life cycle allowing us to expand our services and reach exponentially more women.")

world_pulse_article = Article.create!(
  title: "My Journey to Virtual Volunteering",
  date: '2020-11-20',
  url: "https://www.worldpulse.com/community/users/jcravens/posts/95840",
  charity: world_pulse,
  content: "My first exposure to computers was in a typing class in high school in 1983: half the class had typewriters, half had computers, and then we all switched to the other machine midway through the school year. I wasn't especially entranced by the computers - I liked the typewriters better. I had a job at the newspaper in my hometown at that time and used a computer there to input my stories. A computer was just a word-processing tool to me. After university, I went into marketing and PR for nonprofits, and computers were just something to type on. But then, in the early 1990s, I saw my first Apple Macintosh, and ended up going into debt to buy one in 1993. Now, I could DESIGN ads on my computer, not hand it over to a printing house to typeset. I could create my own presentations. I could also access something I couldn't at my job: a new thing called the Internet, via America Online. I loved the AOL communities and I especially loved USENET Newsgroups. Because of all that interaction with others online, my life has never been the same!

I learned to use all this tech in my own little apartment. At another job, I was the internal communications manager, and the head of PR at the company, a consultant, said he didn't want anything to do with the Internet. As a result, I was in charge of putting together 11 websites, one for each affiliate. Since I was still learning HTML, I recruited some students from a nearby university to help me. I found two, and one suggested they do the work from their own computers in their dorms, because ours were so ancient. I said 'Sure!' I had no idea this was virtual volunteering. My online community experience and my work with these two volunteers landed me a job with what was then Impact Online (now VolunteerMatch), directing the new Virtual Volunteering Project. Four years into that job, I got recruited by the United Nations to run the online volunteering arm of NetAid, which became www.onlinevolunteering.org. I've been all over the world, working in Germany, Egypt, Afghanistan, Poland, Hungary, Ukraine and more, I've written a book, and I've met untold numbers of people, all because of my journey with tech. Digital tools have been completely tied up with my professional life since the 1990s. And on a personal level, online communities regarding my personal interests have brought me friends, played a role in how I met my husband, prompted me to attend all sorts of wonderful events and travel to some amazing places.

I cannot imagine my life without the Internet and computers.

Interest in my expertise in virtual volunteering and online communities really waned around 2015. I felt that virtual volunteering was so mainstream now, people didn't really need me anymore. And then came COVID-19. I am overwhelmed with inquiries and requests. I've ended up creating a series of free videos on my YouTube channel to train up people new to virtual volunteering, so they can begin creating roles and activities immediately - things are too urgent now for me to try to fill every request for basic training.

For more women to be online, we need much more training for women, in women-only spaces if possible, and increased access. Training shouldn't just be how a particular app works: women need training in how to establish themselves online, how to assume leadership roles online, how to handle harassment, how to present themselves professionally, how to be an activist online, how to recognize misinformation, how to promote online civility, how to know when you are being manipulated online, how to recognize when a young person is being radicalized, etc.

I want every woman to know where to find the credible information she needs most, whether that's weather information, market information for whatever she grows in a garden, health care information, how to get in touch with an elected official, and on and on. In a world where technology could be leveraged to its highest potential, women are able to pursue their dreams regarding careers, regarding personal interests, regarding personal needs, and if she chooses, a family.")

london_gaymers_article = Article.create!(
  title: "The continuing importance of LGBT+ spaces in gaming.",
  date: '2020-06-26',
  url: "https://www.eurogamer.net/articles/2020-06-26-pride-week-down-and-out-in-orgrimmar-and-london",
  charity: london_gaymers,
  content: "Spend any amount of time on any popular gaming message board when the issue of LGBT+ representation raises its head, and you can guarantee there'll be someone waiting in the wings to, at the very least, remind LGBT+ players that it's 2020 and 'nobody cares they're gay anymore' - oh, and 'would you mind keeping your sexuality out of my video games?'. It's not exactly surprising then that countless LGBT+ gamers around the world are still seeking the comfort of like-minded individuals and social spaces, both in-game and in real-life, where they're free to be themselves without abuse, judgement, or fear of repercussions - and to simply enjoy the games they want to play.

'I think in mainstream culture there is this wishful idea that because we've had too many seasons of Will & Grace...things are just fine and dandy for the queers in our society,' Benjamin Bon Temps, founder of the long-running Rough Trade Gaming Community tells me, 'Sadly, nothing could be further from the truth. While things are better, and the average Bubba Beercan Gamer might be more open-minded and respectful, there is still the same slew of tired asshats firing off verbal fag bombs and 'this stupid dungeon is gay' type bullshit.'

It's a sentiment shared by Matthew Hardwick, co-founder of the on- and offline LGBT+ community London Gaymers; 'Online spaces can be generally quite a negative experience for minorities as it is,' he says, 'but with insults like 'fag', 'queer', and 'gay' often thrown around in a derogatory manner, it can be particularly hard for LGBT people.' By way of illustration, Hardwick relates one of his own experiences, when someone he'd played online with for over a year immediately bombarded him with abuse on finding out he was gay in party chat. '[He] said I should 'die of AIDS' and 'ass cancer' before threatening to come to my home to murder me.")

girls_who_code_article = Article.create!(
  title: "Groundbreaking Research From Girls Who Code and Accenture Outlines Steps to Double Women in Tech in 10 Years",
  date: '2020-11-20',
  url: "https://girlswhocode.com/news/groundbreaking-research-from-girls-who-code-and-accenture-outlines-steps-to-double-women-in-tech-in-10-years",
  charity: girls_who_code,
  content: "According to research, SHROs twice as likely as female employees to say that it is easy for women to thrive in tech

Joint report indicates that more inclusive company cultures could drop annual attrition rate of women in tech by 70 percent, leading to 3 million women in tech by 2030

NEW YORK (September 29, 2020) – Girls Who Code, the international non-profit leading efforts to close the gender gap in tech, today released a report in partnership with Accenture (NYSE: ACN) indicating an inclusive culture is key to unlocking opportunities for women who are studying and working in technology,

Importantly, the report pointed to a disconnect between what women experience in their roles and what Senior Human Resource Officers (SHROs) believe about their organizations. Specifically, SHROs (45%) are twice as likely as women (21%) to say that it is easy for women to thrive in technology. In fact, just 38% of SHROs identify building a more inclusive culture as an effective way to retain and advance women in technology roles.

The research showed that a cultural reset would have far-reaching positive results. The analysis highlighted that if every company scored high on measures of an inclusive culture — specifically, if they were on par with those in the top 20% of the study — the annual attrition rate of women in technology would drop 70%.

“Girls Who Code has 80,000 college-aged alumni, and more on the way, who will be entering the tech workforce in the coming years—and we’re committed to making sure they’re set up for success,” said Reshma Saujani, founder and CEO of Girls Who Code. “Thanks to this partnership with Accenture, we’re able to provide companies and colleges with concrete steps to retain and advance women in technology. And it all starts with creating an inclusive culture.”

The report, “Resetting Tech Culture,” analyzed the journey for women in IT, from college to successful mid-career. It uncovered specific environment characteristics to help women in technology advance and thrive. The research revealed that, while women leave technology for various reasons, a non-inclusive company culture accounts for 37% of those — making it the number one cause.

“Our research over the past three years has identified three pillars of an inclusive culture: bold leadership, comprehensive action and an empowering environment. We hope to inspire other companies to understand that with a stronger focus on these pillars, the more likely women are to thrive,” said Kathryn Ross, global Open Innovation lead and the Black Founders Development Program lead for Accenture Ventures. “By raising awareness through our findings and action through our recommendations, we hope to advance gender equality in the workplace.”

A nationwide adoption of five cultural practices could help retain 1.4 million young women in tech roles by 2030, which include:

Make it a metric: Set external goals and targets to increase diversity and hold leaders accountable.
Promote equal parenting: Encourage all parents to take leave and make sure they see senior leaders doing the same
Send reinforcements: Provide women with targeted workplace support including mentors, sponsors and employee resource networks
Encode creativity: Reward employees for creativity and innovation as many women who enter technology seek fulfillment and to make a difference in the world
Provide inclusive networking: Schedule opportunities to promote networking with colleagues and senior leaders when everyone can join
Research Methodology

The results are based on three online surveys combined with Accenture’s inclusive workplace culture model. The surveys were conducted online between February and July 2019 and cover three distinct groups across the United States: 1,990 tech employees; 500 senior HR leaders in companies employing people in technology roles; and 2,700 college students.

About Girls Who Code

Girls Who Code is an international nonprofit organization working to close the gender gap in technology, and leading the movement to inspire, educate and equip young women with the computing skills needed to pursue 21st century opportunities. Since launching in 2012, Girls Who Code has reached 500 million people through its work and 300,000 girls through its in-person programming. College-aged alumni of Girls Who Code are declaring majors in computer science and related fields at 15 times the U.S. average. In 2019, the organization was named the #1 Most Innovative Non-Profit on Fast Company’s Most Innovative Companies list. Follow the organization on social media @GirlsWhoCode.

")

marsha_pj_inst_article = Article.create!(
  title: "No pride without liberation",
  date: '2020-11-20',
  url: "https://marshap.org/yahoo-news-heres-why-black-trans-women-are-essential-to-both-lgbtq-equality-and-black-lives-matter-movements/",
  charity: marsha_pj_inst,
  content: "This year, Pride month is taking place in the midst of a growing Black Lives Matter revolution — so there’s no better time to amplify the importance of trans Black lives, as was done last weekend in a massive show of support in Brooklyn and as will happen with a similar demonstration in London on Saturday. To keep it going, Yahoo Life spoke with some of the activists who have been advocating for Black trans visibility for years.

…

Elle Hearns, founder and the executive director of the Marsha P. Johnson Institute, explains to Yahoo Life that Black people cannot be excluded from a movement they started. “The reality is Pride was started during the civil rights movement. … There was no way to disassociate the Stonewall rebellion with the rebellion of the acts and sacrifices of Black people. During that time, a lot of the tactics that Stonewall utilized in the fight for gay liberation were the tactics that were utilized from the civil rights movement.” The organization, named after the Stonewall pioneer, works to “protect and defend the human rights of black transgender people here in the United States.”")

every_mother_article = Article.create!(
  title: "We all must be accountable.",
  date: '2020-11-20',
  url: "https://everymothercounts.org/on-the-front-lines/we-all-must-be-accountable/",
  charity: every_mother_counts,
  content: "In the week since the devastating death of George Floyd, we’ve borne witness to an unbelievable spectrum of emotions play out across our country. With despair pouring out from aching hearts everywhere, many of us find ourselves asking: where is the humanity? What we can do? How can we take greater accountability toward change? Is change even possible?

All of us at EMC believe that change is, indeed, possible. But we must start by changing ourselves and addressing the systems that have allowed the injustice to reach this point. We must move beyond intention toward actionable impact. We not only have the power to change, we have the potential. The time is now and we must recognize that this is long overdue.

So, that’s what we’re doing…we’re starting. Here’s how.


We’re examining our language.
Words are critical, and for years we’ve been hearing that “race affects maternal health experiences and outcomes.” The truth is, race does NOT affect experiences and outcomes. Racism does. It is exposure to implicit bias and structural and interpersonal racism that makes pregnancy and childbirth more dangerous for Black and Indigenous mothers.

We’re getting comfortable with being uncomfortable.
Having real conversations can be hard, and hard conversations are uncomfortable. This week, we’re doing both. Instead of focusing our annual staff retreat on the usual subjects of budgets, strategies and roadmaps, our team will participate in a day-long (virtual) workshop this week focused on achieving equity and justice in all its forms.

We’re taking accountability.
Change requires accountability which begins with taking responsibility. We are re-examining what it means to be a responsible non-profit organization in this day and age, and will work harder than ever to replace outdated colonial models with trust-based giving and shared decision-making, listening to partners from marginalized communities every step of the way.

We’re uplifting and amplifying our partners.
For years, we have supported community-based organizations on the front lines of racial and birth justice—partners that include Ancient Song Doula Services, Changing Woman Initiative, SisterWeb and Village Birth International. Our job is not only to help sustain their work to have the greatest possible impact for mothers, everywhere, but to uplift and amplify our partners as leading examples of equitable, compassionate care to be emulated.

We’re centering the voices of Black, Indigenous, People of Color communities.
To do our work transparently and inclusively, we must continuously center the voices of individuals and communities historically harmed by systems of oppression. We are renewing our commitment to create front-and-center space at a collective table for all stakeholders, not just our own community, in all we do.

We’re taking action.
We know that there is a direct relationship between racism and the disproportionate rates of maternal deaths among Black and Brown communities in the United States—the only developed country in the world with a worsening maternal mortality rate. To end this inexcusable trend, we must relentlessly demand better from our leaders. Take action today by joining us in calling on State and Federal leaders to act to protect and uplift the needs of mothers and families.

As members of our community and supporters of our work, we welcome you to join us. And if you’re not sure where to start, we’ve put together this Black Maternal Health reading list as a starting point for self-education.

With gratitude,

Christy Turlington Burns

Founder, Every Mother Counts")


orchid_project_article = Article.create!(
  title: "We all must be accountable.",
  date: '2020-10-20',
  url: "https://www.orchidproject.org/different-evidence-same-community-putting-female-genital-cutting-research-into-practice/",
  charity: orchid_project,
  content:"Translating research evidence into practice can be a protracted, complicated process.  We need sufficient funds to do it effectively, and have buy-in from those implementing the changes; changes that must be seen as acceptable and achievable by our target audiences.

Cultural, religious and gender-based sensitivities, such as those we see around female genital cutting (FGC), complicate that process further, as does the perception that the type of evidence is important, too.  A divide has traditionally existed between ‘academic’ and ‘community-based’ research.  Academic research is often maligned for its lack of real-world relevance and applicability beyond rarefied scholarly conferences or obscure journals littering dusty library bookshelves.

But it doesn’t have to be that way. It’s a deliberate choice and choices aren’t fixed. Academic and community-based research aren’t necessarily polar opposites.  When conducted well, the data they produce can echo each other, producing synergised lessons and harmonised action points that can be implemented in community-level programmes.

As part of a five-year FGC research programme funded by the United Kingdom’s Department for International Development—the Evidence to End FGM/C: Research to Help Girls and Women Thrive—primary data was collected on the practice in Somaliland by academics from Population Council. The headline findings from that work, and how it resonated with existing community-based research, suggest how they can be implemented in communities to end FGC.

Against a background of near-universal prevalence of female genital cutting in Somaliland, two studies conducted between 2016-19 sought to determine if there were any attitudinal or behavioural changes in the practice and the drivers of those changes. Among their main findings were a two-fold change in the practice for health reasons:

The type of cut was changing —moving from the pharaonic (WHO type III) to what was referred to as the Sunna cut (WHO type I or IV – even though this was interpreted differently among people), especially in urban areas.
This change was attributed to awareness generation and sensitisation in the community by healthcare workers and religious leaders. Most respondents were convinced the change was a positive development, improving the health of girls by minimising harmful health complications; despite the fact that all forms of cutting are harmful and a violation of human rights. It remained unknown whether this change could lead to total abandonment of the practice.

The cut was being medicalised—linked to the Sunna cut—with health professionals as cutters and cutting occurring at facilities or at individuals’ homes.
Underpinning these changes was a parental need—produced by the medical narrative of anti-FGC campaigns and spiritual leaders promoting the Sunna cut—to find an acceptable balance between health preservation of girls and the socio-cultural and religious normative expectation that a cut is undertaken.

Crucially, only 2% of community members supported abandoning female genital cutting entirely. Changes are happening to the practice but only in the sense that the Sunna cut has emerged as a new norm, a more socially acceptable type of FGC that is justified by religious teachings and perceived health messaging. Consequently, the study found that while existing FGC norms are being contested in Somaliland, there is a need to engage at the community level with religious leaders, health professionals, older members of society (especially influential grandmothers) and young people.

The research conducted by Population Council at the academic level is vital, and it’s crucial to the movement to end female genital cutting that more research is carried out so we understand the scale, impacts and changing dynamics of the practice at a local, national and global level. Crucially it can also complement and validate community-originated research—such as that conducted by the Somaliland Family Health Association (SOFHA) with Orchid Project support—that can be more easily applied within programming.")

dress_article = Article.create!(
  title: "Dress for Success Worldwide CEO Joi Gordon Discusses Going Virtual with ABC News",
  date: '2020-10-20',
  url: "https://dressforsuccess.org/news/dress-for-success-worldwide-ceo-joi-gordon-discusses-going-virtual-with-abc-news/",
  charity: dress_for_success,
  content:"Dress for Success Worldwide CEO Joi Gordon discusses providing virtual programming in response to the COVID-19 pandemic and how Dress for Success Oklahoma City plans to rebuild after being vandalized in the midst of nationwide civil unrest.")

gnb_article = Article.create!(
  title: "We are not longer alone",
  date: '2020-10-20',
  url: "https://www.girlsnotbrides.org/girls-adolescents-young-women-and-injustice-in-lac/",
  charity: gnb,
  content:"I still remember when I was a girl – small, taciturn and shy – slipping unnoticed through the crowd. From that small child, I’ve grown into a woman who knows the strength of her own voice, and who speaks out against injustices.

Being around and learning from other women has been key to my personal development and liberation, helping me to feel I belong to a group and know that – even from a distance – my friends stand with me in the struggle.

Growing up and becoming more aware of my reality brought indignation and anger, but also a desire to take action. I was spurred by the cold facts and painful stories of the girls, adolescents, young women and women whose bodies have been cut through by the violence of a patriarchal and sexist system. And the racism and classism that are rooted in our justice systems and societies affect us Indigenous women more seriously. The COVID-19 pandemic is laying bare the precarious reality of Latin America and the Caribbean. It’s highlighting social and economic inequalities and shedding light on the marginalisation, repression and subjugation of women and Indigenous peoples.

Lockdowns affect us all differently. The number of girls, adolescents, young women and women being sexually assaulted has increased. Communities have been criminalised and supressed for defending their natural resources, as other forces seek to further their territorial control. Access to services such as water is still a privilege, and Indigenous women’s access to justice – through its bureaucratic and monolingual processes – is coloured by discrimination and racism. Our justice officials are co-opted and distanced from our communities, making it difficult to file complaints and access information.

On top of this, girls, adolescents, young women and women shoulder more household chores, including providing food and care. This discrimination – which is aggravated by lockdowns – is a significant driver of child, early and forced marriages and unions (CEFMU).

I am aware of the challenges, but also believe the pandemic could be a window of opportunity for analysing how we’ve been living and the nature of our justice and government systems – do they work or have they created impoverished societies and weak institutions?

I firmly believe we can make progress and positive changes in our territories. Knowing that we are no longer alone fuels my hope: even at a distance, we stand together as girls, adolescents, young women and women, and there are more of us every day.

As long as there are voices speaking out against injustice, there’s hope. Girls, adolescents, young women and women play a fundamental role in these processes. That’s why we need to help others recognise the strength of their voices, encourage them to get involved and create spaces for participation.

As a girl I was indifferent to the world of activism, but gaining access to information changed my life. Since then, I’ve worked on community and national advocacy, in processes that bring together stakeholders, educators, field experts and young women to raise awareness and take actions that favour girls and adolescents in Guatemala.

That’s why I think we need to strengthen a generation of empowered women who recognise themselves as political subjects and agents of change; who demand that their States take responsibility for guaranteeing better living conditions for the girls, adolescents, young women and women of Latin America and the Caribbean, legislating and investing in – rather than against – their interests.

Despite the murky outlook, I find a beacon of hope in those who denounce, rebel and speak out, resisting in different ways: in the streets; through journalism, research, art and youth collectives; as Indigenous, Garífuna and Xinca women; as feminists; in academia; on the radio and social media; and – for those who have been unjustly imprisoned for defending their territories – from jail.

As long as there are voices speaking out, there’s hope. It’s so important that we form networks and that there are more of us every day.

")


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
