require 'rails_helper'

RSpec.describe Movie, type: :model do
  before(:all) do
    @movie1 = FactoryBot.create(:movie, title: 'Dog2')
  end

  it 'is valid with valid attributes' do
    expect(@movie1).to be_valid
  end

  it 'has a unique title' do
    movie2 = build(:movie, title: 'Dog2')
    expect(movie2).to_not be_valid
  end

  it 'is not valid without a title' do
    movie2 = build(:movie, title: nil)
    expect(movie2).to_not be_valid
  end

  it 'has many shows' do
    should respond_to(:shows)
  end

  it 'has many bookings' do
    should respond_to(:bookings)
  end
end
