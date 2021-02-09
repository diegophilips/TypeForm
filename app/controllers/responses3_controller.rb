class Responses3Controller < ApplicationController

  def index
     results = HTTParty.get("https://services.onetcenter.org/ws/mnm/careers/", :headers =>
    {"Authorization" => "Basic #{ENV["ONET_KEY"]}", "Accept" => "application/json"})
    render json: results.body
  end
end
