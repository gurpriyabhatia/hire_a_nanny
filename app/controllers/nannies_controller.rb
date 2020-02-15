class NanniesController < ApplicationController
  def index
    # @nannies = Nanny.where.not(latitude: nil, longitude: nil)
    #--> VERY GOOD IDEA. BUT IT WAS RETURNING AN ACTIVE RECORDS RELATION WHICH WAS CAUSING AN ISSUE WHEN DISPLAYING YOUR NANNIES.
    @nannies = Nanny.all.reverse
    @markers = @nannies.map do |nanny|
      { lat: nanny.latitude, lng: nanny.longitude,
        infoWindow: render_to_string(partial: "info_window",
        locals: { nanny: nanny }) }
    end
    @imgs = @nannies.map { |nanny| [nanny.id, nanny.image] }
  end

  def show
    @nanny = Nanny.find(params[:id])
  end
end
