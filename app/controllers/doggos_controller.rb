class DoggosController < ApplicationController
  def index
    @image = DoggoService.call['message']
  end
end
