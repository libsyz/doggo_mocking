class DoggosController < ApplicationController
  def index
    @image = DoggoService.call
  end
end
