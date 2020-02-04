class NanniesController < ApplicationController
  def index
    @nannies = Nanny.all
  end

  def show

  end
end
