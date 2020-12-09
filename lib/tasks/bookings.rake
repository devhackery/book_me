
namespace :bookings do
  desc "Bokking Simulation"

  task revanue: :environment do
    all_bookings = Booking.all

    puts "\n Total Sales"
    puts "\n Revenue:: Rs #{all_bookings.sum(:total)}"
    tax_by_booking = BookingsTax.all.group(:tax_id).sum(:tax_amount) # asuming no cancelation
    tax_by_booking.each do |_type, s|
      puts "\n Tax id: #{s} "
    end
  end

  task avilable_seats: :environment do
    puts "\n Enter show no? [1,2,3]"
    show_no = STDIN.gets.chomp
    selected_show = Show.find(show_no)
    puts "\n Movie name: "
    puts selected_show.movie.title

    puts "\n Avilable Seats: "
    avilable_seats = selected_show.screen.available_seats

    avilable_seats.group_by(&:seat_category).each do |type, s|
      puts type
      puts s.pluck(:name).inspect
    end

    puts "\n Enter Seats"
    seats = STDIN.gets.chomp

    seats_names = seats.split(',')

    seats_names.each do |s_name|
      selected_seats_in_booked = selected_show.screen.booked_seats.where(name: s_name)
      if selected_seats_in_booked.any?
        puts "\n #{s_name} Not available, Please select different seats"
        break
      end
    end

    current_booking = selected_show.bookings.new

    selected_seats = selected_show.screen.available_seats.where(name: seats_names)
    current_booking.seat_ids = selected_seats.ids

    total = 0
    current_booking.seats.each do |seat|
      case seat.seat_category
      when "Platinum"
        total += 320
      when "Gold"
        total += 280
      when "Silver"
        total += 240
      end
    end

    current_booking.total = total

    taxs = Tax.all

    booking_taxs = []
    taxs.each do |t|
      tax_amount = total * (t.charge * 0.01)
      booking_taxs.push({ tax_amount: tax_amount, tax_id: t.id })
    end
    current_booking.bookings_taxes.new(booking_taxs)
    current_booking.save

    puts "\n  Sub Total : Rs #{total}"

    current_booking.bookings_taxes.each do |tx|
      puts "\n  #{tx.tax.title} @ #{tx.tax.charge}: #{tx.tax_amount}"
    end
  end
end
