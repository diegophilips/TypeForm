class Responses2Controller < ApplicationController

  def index
    results = HTTParty.get("https://api.zotero.org/users/6431996/items", :headers =>
    {"Authorization" => "Bearer #{ENV["ZOTERO_API_KEY"]}"}, "Accept-Encoding" => "gzip, deflate, br", "Accept" => "*/*","Connection" => "keep-alive")
    render json: results.body
  end
end
