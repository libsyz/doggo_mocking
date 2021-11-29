require 'httparty'


class DoggoService
  def self.call
    res = HTTParty.get('https://dog.ceo/api/breeds/image/random')
  end
end
