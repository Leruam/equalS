class ResultsController < ApplicationController

  def index
    access_key = ENV["BING_ACCESS_KEY"] # va chercher le token dans le fichier .env
    uri = "https://api.bing.microsoft.com"
    path = "/v7.0/search"
    term = params[:q] # recup du form "search bar" le params "q"
    uri = URI(uri + path + "?q=" + URI.escape(term))
    # URI.escape gere les backslash/la structure d'une requete html (redondant?)

    request = Net::HTTP::Get.new(uri) # construit une requete GET avec l'url "uri"
    request['Ocp-Apim-Subscription-Key'] = access_key # specifie un element du header

    response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http| # start la requete
      http.request(request) # lance la requete request qu'on a construit avant et renvoi le JSON dans "response"
    end

    bing_webpages = JSON(response.body)["webPages"]["value"] # renvoie un array de hashes
    entities_results = JSON(response.body)["entities"]["value"]
    # on pourra rajouter les images et les videos

    # cree un tableau avec un hash par resultat
    # mapper les keys qu'on veut recuperer
    # mettre dans variable d'instance qu'on passera a la view
    @webpages_results = bing_webpages.map do |search|
      {title: search["name"], link: search["url"], link_display: search["displayUrl"], snippet: search["snippet"]}
      # on pourra rajouter les deeplinks plus tard au besoin deeplinks: search["deepLinks"]
    end
binding.pry

  end

end

# JSON::pretty_generate(JSON(response.body)) --> pour voir le résultat de la requete en JSON dans le terminal

  # pour sauver la recherche dans la table searches
    # Search.new(name: params(:q))
    # route custom qui donne des réponse --> search qui fait call API et MAJ bdd searches
