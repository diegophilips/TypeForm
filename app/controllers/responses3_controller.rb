class Responses3Controller < ApplicationController

  def index
     results = HTTParty.get("https://services.onetcenter.org/ws/mnm/careers/", :headers =>
    {"Authorization" => "Basic #{ENV["ONET_KEY"]}"}, "Accept-Encoding" => "gzip, deflate, br", "Accept" => "*/*","Connection" => "keep-alive")
    render json: results.body
  end
end
