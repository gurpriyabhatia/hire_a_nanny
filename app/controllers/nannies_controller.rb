class NanniesController < ApplicationController
  def index
    @nannies = Nanny.where.not(latitude: nil, longitude: nil)
    @markers = @nannies.map do |nanny|
      { lat: nanny.latitude, lng: nanny.longitude }
    end
  end

  def show
    @nanny = Nanny.find(params[:id])
  end

end
