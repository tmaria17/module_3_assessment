class WordsController < ApplicationController

  def index
  end

  def show
    conn = Faraday.new(url: "https://od-api.oxforddictionaries.com") do |faraday|
      faraday.headers["app_key"] = "3537563a"
      faraday.adapter Faraday.defautl_adapter
   end
 end


end
