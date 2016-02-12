class InspectionsController < ApplicationController
  def index
    @inspections = Unirest.get("https://data.cityofchicago.org/resource/4ijn-s7e5.json").body
  end
end
