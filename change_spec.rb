require 'rspec'
require_relative 'change.rb'


describe Change do

  before :each do
    @change = Change.new
  end

  it 'takes a single number' do
  expect(@change.generate(25)).to eq([25])
  end

  it 'takes two numbers' do
    expect(@change.generate(30)).to eq([5, 25])
  end

  it 'takes a lot of numbers' do
    expect(@change.generate(78)).to eq([1,1,1,25,50])
  end

  it 'refuses to give dollars instead of change' do
    expect(@change.generate(998)).to eq([1, 1, 1, 10, 10, 25, 50, 100, 100, 100, 100, 100, 100, 100, 100, 100])
  end
end
