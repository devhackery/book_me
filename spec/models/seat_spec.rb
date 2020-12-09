require 'rails_helper'

RSpec.describe Seat, type: :model do
  before(:all) do
    @screen = FactoryBot.create(:screen, title: 'Aud-1')
    @seat = FactoryBot.create(:seat, name: 'A1', seat_category: 'Platinum')
  end

  it 'is valid with valid attributes' do
    @screen = FactoryBot.create(:seat, name: 'A2', screen_id: @screen.id)
    expect(@seat).to be_valid
  end

  it 'has a unique title' do
    seat = build(:seat, name: nil)
    expect(seat).to_not be_valid
  end

  it 'has a unique seat_category' do
    seat = build(:seat, seat_category: nil)
    expect(seat).to_not be_valid
  end

  it 'has many screen' do
    should respond_to(:screen)
  end
end
