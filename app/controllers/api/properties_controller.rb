class Api::PropertiesController < ApplicationController
  def index
    render json: Property.avaliable
  end
end
