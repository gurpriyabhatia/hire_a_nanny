class NanniesController < ApplicationController
  def index
    @nannies = Nanny.all
  end

  def show
    @nannies = Nanny.find(params[:id])
  end

end
