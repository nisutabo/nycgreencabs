def februarysaturdays

  result = {}

  februarysaturday0rides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 0 and 0').where("service = ?", 'green').map{|r| r.inbound_from_green}.inject(:+)
  februarysaturday0fares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 0 and 0').where("service = ?", 'green').map{|r| r.inbound_sum_fare}.inject(:+)
  februarysaturday0miles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 0 and 0').where("service = ?", 'green').map{|r| r.inbound_sum_distance}.inject(:+)

  februarysaturday1rides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 1 and 1').where("service = ?", 'green').map{|r| r.inbound_from_green}.inject(:+)
  februarysaturday1fares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 1 and 1').where("service = ?", 'green').map{|r| r.inbound_sum_fare}.inject(:+)
  februarysaturday1miles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 1 and 1').where("service = ?", 'green').map{|r| r.inbound_sum_distance}.inject(:+)

  februarysaturday2rides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 2 and 2').where("service = ?", 'green').map{|r| r.inbound_from_green}.inject(:+)
  februarysaturday2fares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 2 and 2').where("service = ?", 'green').map{|r| r.inbound_sum_fare}.inject(:+)
  februarysaturday2miles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 2 and 2').where("service = ?", 'green').map{|r| r.inbound_sum_distance}.inject(:+)

  februarysaturday3rides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 3 and 3').where("service = ?", 'green').map{|r| r.inbound_from_green}.inject(:+)
  februarysaturday3fares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 3 and 3').where("service = ?", 'green').map{|r| r.inbound_sum_fare}.inject(:+)
  februarysaturday3miles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 3 and 3').where("service = ?", 'green').map{|r| r.inbound_sum_distance}.inject(:+)

  februarysaturday4rides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 4 and 4').where("service = ?", 'green').map{|r| r.inbound_from_green}.inject(:+)
  februarysaturday4fares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 4 and 4').where("service = ?", 'green').map{|r| r.inbound_sum_fare}.inject(:+)
  februarysaturday4miles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 4 and 4').where("service = ?", 'green').map{|r| r.inbound_sum_distance}.inject(:+)

  februarysaturday5rides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 5 and 5').where("service = ?", 'green').map{|r| r.inbound_from_green}.inject(:+)
  februarysaturday5fares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 5 and 5').where("service = ?", 'green').map{|r| r.inbound_sum_fare}.inject(:+)
  februarysaturday5miles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 5 and 5').where("service = ?", 'green').map{|r| r.inbound_sum_distance}.inject(:+)

  februarysaturday6rides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 6 and 6').where("service = ?", 'green').map{|r| r.inbound_from_green}.inject(:+)
  februarysaturday6fares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 6 and 6').where("service = ?", 'green').map{|r| r.inbound_sum_fare}.inject(:+)
  februarysaturday6miles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 6 and 6').where("service = ?", 'green').map{|r| r.inbound_sum_distance}.inject(:+)

  februarysaturday7rides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 7 and 7').where("service = ?", 'green').map{|r| r.inbound_from_green}.inject(:+)
  februarysaturday7fares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 7 and 7').where("service = ?", 'green').map{|r| r.inbound_sum_fare}.inject(:+)
  februarysaturday7miles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 7 and 7').where("service = ?", 'green').map{|r| r.inbound_sum_distance}.inject(:+)

  februarysaturday8rides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 8 and 8').where("service = ?", 'green').map{|r| r.inbound_from_green}.inject(:+)
  februarysaturday8fares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 8 and 8').where("service = ?", 'green').map{|r| r.inbound_sum_fare}.inject(:+)
  februarysaturday8miles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 8 and 8').where("service = ?", 'green').map{|r| r.inbound_sum_distance}.inject(:+)

  februarysaturday9rides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 9 and 9').where("service = ?", 'green').map{|r| r.inbound_from_green}.inject(:+)
  februarysaturday9fares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 9 and 9').where("service = ?", 'green').map{|r| r.inbound_sum_fare}.inject(:+)
  februarysaturday9miles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 9 and 9').where("service = ?", 'green').map{|r| r.inbound_sum_distance}.inject(:+)

  februarysaturday10rides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 10 and 10').where("service = ?", 'green').map{|r| r.inbound_from_green}.inject(:+)
  februarysaturday10fares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 10 and 10').where("service = ?", 'green').map{|r| r.inbound_sum_fare}.inject(:+)
  februarysaturday10miles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 10 and 10').where("service = ?", 'green').map{|r| r.inbound_sum_distance}.inject(:+)

  februarysaturday11rides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 11 and 11').where("service = ?", 'green').map{|r| r.inbound_from_green}.inject(:+)
  februarysaturday11fares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 11 and 11').where("service = ?", 'green').map{|r| r.inbound_sum_fare}.inject(:+)
  februarysaturday11miles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 11 and 11').where("service = ?", 'green').map{|r| r.inbound_sum_distance}.inject(:+)

  februarysaturday12rides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 12 and 12').where("service = ?", 'green').map{|r| r.inbound_from_green}.inject(:+)
  februarysaturday12fares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 12 and 12').where("service = ?", 'green').map{|r| r.inbound_sum_fare}.inject(:+)
  februarysaturday12miles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 12 and 12').where("service = ?", 'green').map{|r| r.inbound_sum_distance}.inject(:+)

  februarysaturday13rides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 13 and 13').where("service = ?", 'green').map{|r| r.inbound_from_green}.inject(:+)
  februarysaturday13fares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 13 and 13').where("service = ?", 'green').map{|r| r.inbound_sum_fare}.inject(:+)
  februarysaturday13miles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 13 and 13').where("service = ?", 'green').map{|r| r.inbound_sum_distance}.inject(:+)

  februarysaturday14rides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 14 and 14').where("service = ?", 'green').map{|r| r.inbound_from_green}.inject(:+)
  februarysaturday14fares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 14 and 14').where("service = ?", 'green').map{|r| r.inbound_sum_fare}.inject(:+)
  februarysaturday14miles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 14 and 14').where("service = ?", 'green').map{|r| r.inbound_sum_distance}.inject(:+)

  februarysaturday15rides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 15 and 15').where("service = ?", 'green').map{|r| r.inbound_from_green}.inject(:+)
  februarysaturday15fares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 15 and 15').where("service = ?", 'green').map{|r| r.inbound_sum_fare}.inject(:+)
  februarysaturday15miles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 15 and 15').where("service = ?", 'green').map{|r| r.inbound_sum_distance}.inject(:+)

  februarysaturday16rides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 16 and 16').where("service = ?", 'green').map{|r| r.inbound_from_green}.inject(:+)
  februarysaturday16fares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 16 and 16').where("service = ?", 'green').map{|r| r.inbound_sum_fare}.inject(:+)
  februarysaturday16miles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 16 and 16').where("service = ?", 'green').map{|r| r.inbound_sum_distance}.inject(:+)

  februarysaturday17rides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 17 and 17').where("service = ?", 'green').map{|r| r.inbound_from_green}.inject(:+)
  februarysaturday17fares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 17 and 17').where("service = ?", 'green').map{|r| r.inbound_sum_fare}.inject(:+)
  februarysaturday17miles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 17 and 17').where("service = ?", 'green').map{|r| r.inbound_sum_distance}.inject(:+)

  februarysaturday18rides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 18 and 18').where("service = ?", 'green').map{|r| r.inbound_from_green}.inject(:+)
  februarysaturday18fares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 18 and 18').where("service = ?", 'green').map{|r| r.inbound_sum_fare}.inject(:+)
  februarysaturday18miles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 18 and 18').where("service = ?", 'green').map{|r| r.inbound_sum_distance}.inject(:+)

  februarysaturday19rides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 19 and 19').where("service = ?", 'green').map{|r| r.inbound_from_green}.inject(:+)
  februarysaturday19fares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 19 and 19').where("service = ?", 'green').map{|r| r.inbound_sum_fare}.inject(:+)
  februarysaturday19miles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 19 and 19').where("service = ?", 'green').map{|r| r.inbound_sum_distance}.inject(:+)

  februarysaturday20rides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 20 and 20').where("service = ?", 'green').map{|r| r.inbound_from_green}.inject(:+)
  februarysaturday20fares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 20 and 20').where("service = ?", 'green').map{|r| r.inbound_sum_fare}.inject(:+)
  februarysaturday20miles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 20 and 20').where("service = ?", 'green').map{|r| r.inbound_sum_distance}.inject(:+)

  februarysaturday21rides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 21 and 21').where("service = ?", 'green').map{|r| r.inbound_from_green}.inject(:+)
  februarysaturday21fares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 21 and 21').where("service = ?", 'green').map{|r| r.inbound_sum_fare}.inject(:+)
  februarysaturday21miles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 21 and 21').where("service = ?", 'green').map{|r| r.inbound_sum_distance}.inject(:+)

  februarysaturday22rides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 22 and 22').where("service = ?", 'green').map{|r| r.inbound_from_green}.inject(:+)
  februarysaturday22fares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 22 and 22').where("service = ?", 'green').map{|r| r.inbound_sum_fare}.inject(:+)
  februarysaturday22miles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 22 and 22').where("service = ?", 'green').map{|r| r.inbound_sum_distance}.inject(:+)

  februarysaturday23rides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 23 and 23').where("service = ?", 'green').map{|r| r.inbound_from_green}.inject(:+)
  februarysaturday23fares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 23 and 23').where("service = ?", 'green').map{|r| r.inbound_sum_fare}.inject(:+)
  februarysaturday23miles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where('extract(hour from pickup_hour) between 23 and 23').where("service = ?", 'green').map{|r| r.inbound_sum_distance}.inject(:+)


  result = {}
  result[:february] = {}
  result[:february][:saturdays] = {}
  result[:february][:saturdays]['00:00'] = {}
  result[:february][:saturdays]['00:00'][:totalrides] = februarysaturday0rides
  result[:february][:saturdays]['00:00'][:totalfares] = februarysaturday0fares
  result[:february][:saturdays]['00:00'][:totalmiles] = februarysaturday0miles

  result[:february][:saturdays]['01:00'] = {}
  result[:february][:saturdays]['01:00'][:totalrides] = februarysaturday1rides
  result[:february][:saturdays]['01:00'][:totalfares] = februarysaturday1fares
  result[:february][:saturdays]['01:00'][:totalmiles] = februarysaturday1rides

  result[:february][:saturdays]['02:00'] = {}
  result[:february][:saturdays]['02:00'][:totalrides] = februarysaturday2rides
  result[:february][:saturdays]['02:00'][:totalfares] = februarysaturday2fares
  result[:february][:saturdays]['02:00'][:totalmiles] = februarysaturday2miles

  result[:february][:saturdays]['03:00'] = {}
  result[:february][:saturdays]['03:00'][:totalrides] = februarysaturday3rides
  result[:february][:saturdays]['03:00'][:totalfares] = februarysaturday3fares
  result[:february][:saturdays]['03:00'][:totalmiles] = februarysaturday3miles

  result[:february][:saturdays]['04:00'] = {}
  result[:february][:saturdays]['04:00'][:totalrides] = februarysaturday4rides
  result[:february][:saturdays]['04:00'][:totalfares] = februarysaturday4fares
  result[:february][:saturdays]['04:00'][:totalmiles] = februarysaturday4miles

  result[:february][:saturdays]['05:00'] = {}
  result[:february][:saturdays]['05:00'][:totalrides] = februarysaturday5rides
  result[:february][:saturdays]['05:00'][:totalfares] = februarysaturday5fares
  result[:february][:saturdays]['05:00'][:totalmiles] = februarysaturday5miles

  result[:february][:saturdays]['06:00'] = {}
  result[:february][:saturdays]['06:00'][:totalrides] = februarysaturday6rides
  result[:february][:saturdays]['06:00'][:totalfares] = februarysaturday6fares
  result[:february][:saturdays]['06:00'][:totalmiles] = februarysaturday6miles

  result[:february][:saturdays]['07:00'] = {}
  result[:february][:saturdays]['07:00'][:totalrides] = februarysaturday7rides
  result[:february][:saturdays]['07:00'][:totalfares] = februarysaturday7fares
  result[:february][:saturdays]['07:00'][:totalmiles] = februarysaturday7miles

  result[:february][:saturdays]['08:00'] = {}
  result[:february][:saturdays]['08:00'][:totalrides] = februarysaturday8rides
  result[:february][:saturdays]['08:00'][:totalfares] = februarysaturday8fares
  result[:february][:saturdays]['08:00'][:totalmiles] = februarysaturday8miles

  result[:february][:saturdays]['09:00'] = {}
  result[:february][:saturdays]['09:00'][:totalrides] = februarysaturday9rides
  result[:february][:saturdays]['09:00'][:totalfares] = februarysaturday9fares
  result[:february][:saturdays]['09:00'][:totalmiles] = februarysaturday9miles

  result[:february][:saturdays]['10:00'] = {}
  result[:february][:saturdays]['10:00'][:totalrides] = februarysaturday10rides
  result[:february][:saturdays]['10:00'][:totalfares] = februarysaturday10fares
  result[:february][:saturdays]['10:00'][:totalmiles] = februarysaturday10miles

  result[:february][:saturdays]['11:00'] = {}
  result[:february][:saturdays]['11:00'][:totalrides] = februarysaturday11rides
  result[:february][:saturdays]['11:00'][:totalfares] = februarysaturday11fares
  result[:february][:saturdays]['11:00'][:totalmiles] = februarysaturday11miles

  result[:february][:saturdays]['12:00'] = {}
  result[:february][:saturdays]['12:00'][:totalrides] = februarysaturday12rides
  result[:february][:saturdays]['12:00'][:totalfares] = februarysaturday12fares
  result[:february][:saturdays]['12:00'][:totalmiles] = februarysaturday12miles

  result[:february][:saturdays]['13:00'] = {}
  result[:february][:saturdays]['13:00'][:totalrides] = februarysaturday13rides
  result[:february][:saturdays]['13:00'][:totalfares] = februarysaturday13fares
  result[:february][:saturdays]['13:00'][:totalmiles] = februarysaturday13miles

  result[:february][:saturdays]['14:00'] = {}
  result[:february][:saturdays]['14:00'][:totalrides] = februarysaturday14rides
  result[:february][:saturdays]['14:00'][:totalfares] = februarysaturday14fares
  result[:february][:saturdays]['14:00'][:totalmiles] = februarysaturday14miles

  result[:february][:saturdays]['15:00'] = {}
  result[:february][:saturdays]['15:00'][:totalrides] = februarysaturday15rides
  result[:february][:saturdays]['15:00'][:totalfares] = februarysaturday15fares
  result[:february][:saturdays]['15:00'][:totalmiles] = februarysaturday15miles

  result[:february][:saturdays]['16:00'] = {}
  result[:february][:saturdays]['16:00'][:totalrides] = februarysaturday16rides
  result[:february][:saturdays]['16:00'][:totalfares] = februarysaturday16fares
  result[:february][:saturdays]['16:00'][:totalmiles] = februarysaturday16miles

  result[:february][:saturdays]['17:00'] = {}
  result[:february][:saturdays]['17:00'][:totalrides] = februarysaturday17rides
  result[:february][:saturdays]['17:00'][:totalfares] = februarysaturday17fares
  result[:february][:saturdays]['17:00'][:totalmiles] = februarysaturday17miles

  result[:february][:saturdays]['18:00'] = {}
  result[:february][:saturdays]['18:00'][:totalrides] = februarysaturday18rides
  result[:february][:saturdays]['18:00'][:totalfares] = februarysaturday18fares
  result[:february][:saturdays]['18:00'][:totalmiles] = februarysaturday18miles

  result[:february][:saturdays]['19:00'] = {}
  result[:february][:saturdays]['19:00'][:totalrides] = februarysaturday19rides
  result[:february][:saturdays]['19:00'][:totalfares] = februarysaturday19fares
  result[:february][:saturdays]['19:00'][:totalmiles] = februarysaturday19miles

  result[:february][:saturdays]['20:00'] = {}
  result[:february][:saturdays]['20:00'][:totalrides] = februarysaturday20rides
  result[:february][:saturdays]['20:00'][:totalfares] = februarysaturday20fares
  result[:february][:saturdays]['20:00'][:totalmiles] = februarysaturday20miles

  result[:february][:saturdays]['21:00'] = {}
  result[:february][:saturdays]['21:00'][:totalrides] = februarysaturday21rides
  result[:february][:saturdays]['21:00'][:totalfares] = februarysaturday21fares
  result[:february][:saturdays]['21:00'][:totalmiles] = februarysaturday21miles

  result[:february][:saturdays]['22:00'] = {}
  result[:february][:saturdays]['22:00'][:totalrides] = februarysaturday22rides
  result[:february][:saturdays]['22:00'][:totalfares] = februarysaturday22fares
  result[:february][:saturdays]['22:00'][:totalmiles] = februarysaturday22miles

  result[:february][:saturdays]['23:00'] = {}
  result[:february][:saturdays]['23:00'][:totalrides] = februarysaturday23rides
  result[:february][:saturdays]['23:00'][:totalfares] = februarysaturday23fares
  result[:february][:saturdays]['23:00'][:totalmiles] = februarysaturday23miles

  render json: result

end
