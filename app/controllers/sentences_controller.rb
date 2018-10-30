class SentencesController < ApplicationController

  def index
    conn = Faraday.new(url: "https://od-api.oxforddictionaries.com") do |faraday|
      faraday.headers["app_id"] = "3537563a"
      faraday.headers["app_key"] = "10a731a970765162539b2fc23d9a723e"
      faraday.adapter Faraday.default_adapter
     end

    response = conn.get("/api/v1/entries/en/mindfulness/sentences")
    @word = JSON.parse(response.body, symbolize_names: true)[:results]
    @sentences =  @word[0][:lexicalEntries][0][:sentences]
  end

  def create
  end




end
