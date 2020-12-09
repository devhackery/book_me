FactoryBot.define do
  factory :seat, class: Seat do
    name { 'A1' }
    seat_category { 'Platinum' }
  end
end
