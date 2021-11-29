require 'rails_helper'
require 'rspec'
require 'rspec/mocks'


describe DoggoService do
  xit 'gets an image from the doggo api' do
    res  = DoggoService.call
    expect(res).to match(/https:\/\/images\.dog\.ceo\/breeds\/.+\/.+\.jpg/)
    # What's good
      # hyper realistic
    # What's not so good
      # We are actually stressing a real API
  end

  xit 'gets an image from the doggo api - with Env Check' do
    res  = DoggoService.call
    expect(res).to match(/https:\/\/images\.dog\.ceo\/breeds\/.+\/.+\.jpg/)
    # What's good
      # Flexible
    # What's not so good
      # Design is mnhe - environment is unlikely to change at runtime
      # We changed the design to satisfy the shape of our tests
      # unscalable
  end

  xit 'gets an image from the doggo api - With Mocks' do
    fake_service = double('FakeDoggoService')
    allow(fake_service).to receive(:call).and_return("https://images.dog.ceo/breeds/german_shepherd/0001.jpg/")
    expect(fake_service.call).to match(/https:\/\/images\.dog\.ceo\/breeds\/.+\/.+\.jpg/)
    # What's good
      # lightweight
      # useful in integration testing
    # What's not so good
      # It's just a canned response
      # hard to keep organized
      # useless in a unit testing scenario
      # -----------------
  end

  xit 'gets an image from the doggo api - with VCR' do
    fake_service = double('FakeDoggoService')
    allow(fake_service).to receive(:call).and_return("https://images.dog.ceo/breeds/german_shepherd/0001.jpg/")
    expect(fake_service.call).to match(/https:\/\/images\.dog\.ceo\/breeds\/.+\/.+\.jpg/)
    # this might be useful in an integration scenario
    # but now it's not testing anything at all
  end

end
