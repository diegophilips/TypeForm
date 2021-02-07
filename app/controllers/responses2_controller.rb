class Responses2Controller < ApplicationController

  def index
    results = HTTParty.get("https://api.zotero.org/users/6431996/items/top", :headers =>
    {"Authorization" => "Bearer #{ENV["ZOTERO_API_KEY"]}"},
    "Content-Type" => "application/json")
    render json: results.to_json
  end
end
