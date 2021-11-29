require 'rails_helper'
require 'rspec'


describe DoggoService do
  it 'gets an image from the doggo api' do
    res  = DoggoService.call
    expect(res).to match(/https:\/\/images\.dog\.ceo\/breeds\/.+\/.+\.jpg/)
  end
end
