class WordFacade

  def initialize

  end



  def get_word
    get_json("/api/v1/entries/en/mindfulness/sentences")
  end

private
  def conn
    Faraday.new(url: "https://od-api.oxforddictionaries.com") do |faraday|
      faraday.headers["app_id"] = "3537563a"
      faraday.headers["app_key"] = "10a731a970765162539b2fc23d9a723e"
      faraday.adapter Faraday.default_adapter
  end

  def get_json(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)[:results]
  end


end
