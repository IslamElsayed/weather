class WeathersController < ApplicationController
  def index
    @response = Weather::SearchService.new(params[:q]).execute if params[:q]
  end
end
