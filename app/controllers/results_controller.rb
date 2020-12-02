class ResultsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :image_index]

  def index
    access_key = ENV["BING_ACCESS_KEY"] # va chercher le token dans le fichier .env
    uri = "https://api.bing.microsoft.com"
    path = "/v7.0/search"
    term = params[:q]
    language = "&setLang=fr" # pour la langue de recherche
    market = "&mkt=fr-FR" # va de pair avec language
    count = "&count=15" # pour le nombre de resultats renvoyes (par defaut 10)
    offset = "&offset=0" # pour le premier resultat renvoye
    uri = URI(uri + path + "?q=" + CGI.escape(term) + language + market + count + offset)
    # URI.escape gere les backslash/la structure d'une requete html (redondant?)
    request = Net::HTTP::Get.new(uri) # construit une requete GET avec l'url "uri"
    request['Ocp-Apim-Subscription-Key'] = access_key # specifie un element du header
    response = Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == 'https') do |http| # start la requete
      http.request(request) # lance la requete request qu'on a construit avant et renvoi le JSON dans "response"
    end

    # webpages //
    if JSON(response.body)["webPages"].nil?
      bing_webpages = []
    else
      bing_webpages = JSON(response.body)["webPages"]["value"] # renvoie un array de hashes
    end
    # cree un tableau avec un hash par resultat
    # mapper les keys qu'on veut recuperer
    # mettre dans variable d'instance qu'on passera a la view
    @webpages_results = bing_webpages.empty? ? # pour ne pas casser le code si on a un retour d'API array vide
      []
      :
      bing_webpages.map do |search|
        { title: search["name"],
          link: search["url"],
          link_display: search["displayUrl"],
          snippet: search["snippet"] }
        # on pourra rajouter les deeplinks plus tard au besoin deeplinks: search["deepLinks"]
      end

    # entities //
    if JSON(response.body)["entities"].nil?
      bing_entities = []
    else
      bing_entities = JSON(response.body)["entities"]["value"]
    end

    @entities_results = bing_entities.empty? ?
      []
      :
      bing_entities.map do |search|
        { title: (search["name"].nil? ? nil : search["name"]),
          image: ((search["image"].nil? || search["image"]["thumbnailUrl"].nil?) ? nil : search["image"]["thumbnailUrl"]),
          snippet: (search["description"]),
          link: ((search["image"].nil? || search["image"]["provider"].nil? || search["image"]["provider"].first["url"].nil?) ? nil : search["image"]["provider"].first["url"]) }
      end

    # images //
    if JSON(response.body)["images"].nil?
      bing_images = []
    else
      bing_images = JSON(response.body)["images"]["value"]
    end

    @images_results = bing_images.empty? ?
      []
      :
      bing_images.map do |search|
        { title: search["name"],
          link: search["contentUrl"],
          link_thumbnail: search["thumbnailUrl"],
          thumbnail_size: search["thumbnail"] }
      end

    # videos //
    if JSON(response.body)["videos"].nil?
      bing_videos = []
    else
      bing_videos = JSON(response.body)["videos"]["value"]
    end

    @videos_results = bing_videos.empty? ?
      []
      :
      bing_videos.map do |search|
        { title: search["name"],
          link: search["contentUrl"],
          date: search["datePublished"],
          image: search["thumbnailUrl"] } # provider: search["publisher"]["name"]
      end

    # news //
    if JSON(response.body)["news"].nil?
      bing_news = []
    else
      bing_news = JSON(response.body)["news"]["value"]
    end
    @news_results = bing_news.empty? ?
      []
      :
      bing_news.map do |search|
        { title: search["name"],
          link: search["url"],
          date: search["datePublished"],
          image: ((search["image"].nil? || search["image"]["contentUrl"].nil?) ? nil : search["image"]["contentUrl"]) }
      end
    end

  def image_index
    access_key = ENV["BING_ACCESS_KEY"]
    uri = "https://api.bing.microsoft.com"
    path = "/v7.0/images/search"
    term = params[:q]
    uri = URI(uri + path + "?q=" + CGI.escape(term))

    request = Net::HTTP::Get.new(uri)
    request['Ocp-Apim-Subscription-Key'] = access_key

    response = Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == 'https') do |http|
      http.request(request)
    end

    if JSON(response.body)["value"].nil?
      bing_images = []
    else
      bing_images = JSON(response.body)["value"]
    end
    @images_results = bing_images.empty? ?
      []
      :
      bing_images.map do |search|
        { title: search["name"],
          link: search["contentUrl"],
          link_thumbnail: search["thumbnailUrl"],
          thumbnail_size: search["thumbnail"] }
      end
  end
end

  # JSON::pretty_generate(JSON(response.body)) --> pour voir le resultat de la requete en JSON dans le terminal
  # pour sauver la recherche dans la table searches
  # Search.new(name: params(:q))
  # route custom qui donne des reponse --> search qui fait call API et MAJ bdd searches

  # binding.pry
