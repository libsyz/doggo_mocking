class DoggosController < ApplicationController
  def index
    res = HTTParty.get('https://dog.ceo/api/breeds/image/random')
    @image = res['message']
  end
end
