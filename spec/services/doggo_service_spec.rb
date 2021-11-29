require 'rails_helper'
require 'rspec'
require 'rspec/mocks'


describe DoggoService do
  xit 'gets an image from the doggo api' do
    res  = DoggoService.call
    # problem! We are ACTUALLY CALLING AN API
    expect(res).to match(/https:\/\/images\.dog\.ceo\/breeds\/.+\/.+\.jpg/)
  end

  xit 'gets an image from the doggo api - Mocked' do
    fake_service = double('FakeDoggoService')
    allow(fake_service).to receive(:call).and_return("https://images.dog.ceo/breeds/german_shepherd/0001.jpg/")
    expect(fake_service.call).to match(/https:\/\/images\.dog\.ceo\/breeds\/.+\/.+\.jpg/)
    # this might be useful in an integration scenario
    # but now it's not testing anything at all
  end


end
