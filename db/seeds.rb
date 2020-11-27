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
    category: "lgbt+",
    website:"https://www.le-refuge.org/"
    )

le_refuge_photo = URI.open('https://upload.wikimedia.org/wikipedia/commons/4/41/Logo_de_la_Fondation_Le_Refuge.jpg')
le_refuge.photo.attach(io: le_refuge_photo, filename: '#{le_refuge.name}.jpg', content_type: 'image/jpg')
le_refuge.save!

osez_le_feminisme = Charity.create!(
    name: "0sez le féminisme",
    description: "Osez le féminisme! is an association founded in 2009 to raise the level of feminism in society, and to contribute to the fight against gender inequality. We organize awareness campaigns on gender equality, distribute a newspaper sent to our members, organize weekends of activist training, intervene in the public debate, to advance women's rights. We have 26 branches throughout France. We are members of the High Committee for Equality since 2013.",
    address: "Paris, France",
    category: "feminist",
    website:"http://osezlefeminisme.fr/"
    )

osez_le_feminisme_photo = URI.open('https://osezlefeminisme.fr/wp-content/uploads/2019/07/VoeuxOLF2019-1-300x214.jpg')
osez_le_feminisme.photo.attach(io: osez_le_feminisme_photo, filename: '#{osez_le_feminisme.name}.jpg', content_type: 'image/jpg')
osez_le_feminisme.save!

causette = Charity.create!(
    name: "Causette",
    description: "Causette magazine appeared on newsstands on March 8, 2009. It has a circulation of 20,000 copies and is distributed throughout France by subscription. Initially bimonthly, the magazine has been published every month since September 2011. In February 2012 Causette became the first and only women's magazine declared a publication of political and general interest by the Ministry of Culture.",
    address: "Paris France",
    category: "feminist",
    website:"https://www.causette.fr/"
    )

causette_photo = URI.open("https://www.causette.fr/wp-content/uploads/2020/08/causette-carre-rouge-948x515.jpg")
causette.photo.attach(io: causette_photo, filename: '#{causette.name}.jpg', content_type: 'image/jpg')
causette.save!

solidarites_femmes = Charity.create!(
    name: "Solidarités femmes",
    description: "Solidarité Femmes is a network of associations specializing in the reception, support and accommodation of women victims of violence.",
    address: "Paris France",
    category: "domestic violence",
    website:"https://www.solidaritefemmes.org/"
    )

solidarites_femmes_photo = URI.open('https://ideas.asso.fr/wp-content/uploads/2019/07/LogoFNSF-profilTW2.png')
solidarites_femmes.photo.attach(io: solidarites_femmes_photo, filename: '#{solidarites_femmes.name}.jpg', content_type: 'image/jpg')
solidarites_femmes.save!

nous_toutes = Charity.create!(
    name: "Collectif Nous toutes",
    description: "The collective #NousToutes is a feminist collective committed against sexist, sexual, economic, psychological, verbal and physical violence against women. It brings together individuals, associations, trade unions and political organizations.",
    address: "Paris France",
    category: "feminist",
    website:"https://www.noustoutes.org/"
    )

nous_toutes_photo = URI.open('https://i0.wp.com/www.50-50magazine.fr/_19/wp-content/uploads/2020/02/image1-2.jpg?fit=1069%2C913&ssl=1')
nous_toutes.photo.attach(io: nous_toutes_photo, filename: '#{nous_toutes.name}.jpg', content_type: 'image/jpg')
nous_toutes.save!

happy_period = Charity.create!(
    name: "Happy Period",
    description: "Periods are something anyone with a uterus experiences, and while it can be annoying for many, it’s a real problem for the homeless and anyone else without access to supplies. Happy Period builds kits for distribution and gets the community involved to help destigmatize periods and raise awareness.",
    address: "Los Angeles, California, USA",
    category: "feminist",
    website:"https://hashtaghappyperiod.org/"
    )

happy_period_photo = URI.open('https://happymenstruation.fairgaze.com/Content/SachiSaheli/images/form_img.jpg')
happy_period.photo.attach(io: happy_period_photo, filename: '#{happy_period.name}.jpg', content_type: 'image/jpg')
happy_period.save!

pro_mujer = Charity.create!(
    name: "Pro Mujer",
    description: "This organization for women in South and Central America provides resources like financial services, business and leadership training, and health care, so women can break free from poverty’s vicious cycle. Pro Mujer was founded in 1990 based on microlending, and became a major force for women’s development.",
    address: "Mexico, Mexico",
    category: "feminist",
    website:"https://promujer.org/"
    )

pro_mujer_photo = URI.open('https://cdn.shopify.com/s/files/1/1842/4701/files/white_logo_on_red_box186u-w_EN_tag.jpg')
pro_mujer.photo.attach(io: pro_mujer_photo, filename: '#{pro_mujer.name}.jpg', content_type: 'image/jpg')
pro_mujer.save!

world_pulse = Charity.create!(
    name: "World Pulse",
    description: "This organization’s goal is to harness social media and technology for good. On the social network, women can connect, share their stories and ideas, and more. It currently has users in 190 countries. Programs with World Pulse include Voices of the Future, which helps train and educate women on using technology and digital media.",
    address: "Portland, Oregon, USA",
    category: "feminist",
    website:"https://www.worldpulse.com/"
    )

world_pulse_photo = URI.open('https://www.channelfoundation.org/wp-content/uploads/2017/02/world-pulse-vertical.png')
world_pulse.photo.attach(io: world_pulse_photo, filename: '#{world_pulse.name}.jpg', content_type: 'image/jpg')
world_pulse.save!

london_gaymers = Charity.create!(
    name: "London Gaymers",
    description: "London Gaymers is the UK’s biggest LGBT+ gaymer community. London Gaymers was established in 2012 as a social group to help LGBT+ gamers in London to find and make new friends in a safe and welcoming environment. Since then we have continued to grow into a thriving gaymer community. We hold regular meet ups every month, online tournaments and have an active Discord server where you’ll find other gaymers to play with. We always ensure we retain the friendly and accepting values that make London Gaymers such a great place to hang out and meet new people.",
    address: "London, UK",
    category: "lgbt+",
    website:"https://www.londongaymers.co.uk/"
    )

lg_photo = URI.open('https://scontent-cdt1-1.xx.fbcdn.net/v/t31.0-8/19477731_1329797300406924_685468511506910776_o.png?_nc_cat=106&ccb=2&_nc_sid=174925&_nc_ohc=cQB6RtvsKAYAX-DY3v3&_nc_ht=scontent-cdt1-1.xx&oh=fd25ebe55106de14bfe9090d6fcc8649&oe=5FE7DDFF')
london_gaymers.photo.attach(io: lg_photo, filename: '#{london_gaymers.name}.jpg', content_type: 'image/jpg')
london_gaymers.save!

center_for_be = Charity.create!(
    name: "Center for Black Equity",
    description: "The Center for Black Equity recognizes this and promotes itself as being the leading center of Black LGBTQ+ equality. The best thing about this agency is that it gets deep within communities and centers their issues with its own. The best way to help is to spread awareness. Alongside Black-owned business, Black LGBTQ+ organizations need to be lifted too. And help with donating money whenever you can.",
    address: "Washington DC, USA",
    category: "lgbt+",
    website:"https://www.centerforblackequity.net/"
    )

center_for_be_photo = URI.open('https://www.capitalpride.org/wp-content/uploads/Center_Black_Equity_logo_square-500x321.png')
center_for_be.photo.attach(io: center_for_be_photo, filename: '#{center_for_be.name}.jpg', content_type: 'image/jpg')
center_for_be.save!


marsha_pj_inst = Charity.create!(
    name: "The Marsha P. Johnson Institute ",
    description: "The Marsha P. Johnson Institute defends the rights of Black transgender people all over. This type of service is needed right now. Johnson was a crucial piece of the Stonewall uprising in 1969 and lives on as an important part of BIPOC LGBTQ+ history.",
    address: "Richmond, California, USA",
    category: "lgbt+",
    website:"https://marshap.org/"
    )

marsha_photo = URI.open('https://pbs.twimg.com/profile_images/1240662361477992448/zN5M2k4x_400x400.jpg')
marsha_pj_inst.photo.attach(io: marsha_photo, filename: '#{marsha_pj_inst.name}.jpg', content_type: 'image/jpg')
marsha_pj_inst.save!


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

marsha_pj_inst_article = Article.create!(
  title: "No pride without liberation",
  date: '2020-11-20',
  url: "https://marshap.org/yahoo-news-heres-why-black-trans-women-are-essential-to-both-lgbtq-equality-and-black-lives-matter-movements/",
  charity: marsha_pj_inst,
  content: "This year, Pride month is taking place in the midst of a growing Black Lives Matter revolution — so there’s no better time to amplify the importance of trans Black lives, as was done last weekend in a massive show of support in Brooklyn and as will happen with a similar demonstration in London on Saturday. To keep it going, Yahoo Life spoke with some of the activists who have been advocating for Black trans visibility for years.

…

Elle Hearns, founder and the executive director of the Marsha P. Johnson Institute, explains to Yahoo Life that Black people cannot be excluded from a movement they started. “The reality is Pride was started during the civil rights movement. … There was no way to disassociate the Stonewall rebellion with the rebellion of the acts and sacrifices of Black people. During that time, a lot of the tactics that Stonewall utilized in the fight for gay liberation were the tactics that were utilized from the civil rights movement.” The organization, named after the Stonewall pioneer, works to “protect and defend the human rights of black transgender people here in the United States.”")

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

Support.create!(user: manon, charity: center_for_be)


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
