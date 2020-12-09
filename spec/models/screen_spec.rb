require 'rails_helper'

RSpec.describe Screen, type: :model do
  before(:all) do
    @screen = FactoryBot.create(:screen, title: 'Aud-1')
  end

  it 'is valid with valid attributes' do
    expect(@screen).to be_valid
  end

  it 'has a unique title' do
    screen = build(:screen, title: 'Aud-1')
    expect(screen).to_not be_valid
  end
end
