class LocationsController < ApplicationController

  def location_data

    result = {}

    locations = Rides.select(:location).distinct

    locations_parsed = locations.map{|l| l.location}.select{|k| k != 'Rikers Island' && k != 'NV'}.sort

    locations_parsed.each{|l|
      result[l] = {}
      result[l][:totalridesgreen] = {}
      result[l][:totalridesgreen]['mondays'] = Rides.where("location = ? AND service = ?", l, 'green').where("extract(isodow from pickup_hour) between 1 and 1").map{|r| r.inbound_from_green}.inject(:+)
      result[l][:totalridesgreen]['tuesdays'] = Rides.where("location = ? AND service = ?", l, 'green').where("extract(isodow from pickup_hour) between 2 and 2").map{|r| r.inbound_from_green}.inject(:+)
      result[l][:totalridesgreen]['wednesdays'] = Rides.where("location = ? AND service = ?", l, 'green').where("extract(isodow from pickup_hour) between 3 and 3").map{|r| r.inbound_from_green}.inject(:+)
      result[l][:totalridesgreen]['thursdays'] = Rides.where("location = ? AND service = ?", l, 'green').where("extract(isodow from pickup_hour) between 4 and 4").map{|r| r.inbound_from_green}.inject(:+)
      result[l][:totalridesgreen]['fridays'] = Rides.where("location = ? AND service = ?", l, 'green').where("extract(isodow from pickup_hour) between 5 and 5").map{|r| r.inbound_from_green}.inject(:+)
      result[l][:totalridesgreen]['saturdays'] = Rides.where("location = ? AND service = ?", l, 'green').where("extract(isodow from pickup_hour) between 6 and 6").map{|r| r.inbound_from_green}.inject(:+)
      result[l][:totalridesgreen]['sundays'] = Rides.where("location = ? AND service = ?", l, 'green').where("extract(isodow from pickup_hour) between 7 and 7").map{|r| r.inbound_from_green}.inject(:+)

      result[l][:totalridesgreenoutbound] = {}
      result[l][:totalridesgreenoutbound]['mondays'] = Rides.where("location = ? AND service = ?", l, 'green').where("extract(isodow from pickup_hour) between 1 and 1").map{|r| r.outbound_to_green}.inject(:+)
      result[l][:totalridesgreenoutbound]['tuesdays'] = Rides.where("location = ? AND service = ?", l, 'green').where("extract(isodow from pickup_hour) between 2 and 2").map{|r| r.outbound_to_green}.inject(:+)
      result[l][:totalridesgreenoutbound]['wednesdays'] = Rides.where("location = ? AND service = ?", l, 'green').where("extract(isodow from pickup_hour) between 3 and 3").map{|r| r.outbound_to_green}.inject(:+)
      result[l][:totalridesgreenoutbound]['thursdays'] = Rides.where("location = ? AND service = ?", l, 'green').where("extract(isodow from pickup_hour) between 4 and 4").map{|r| r.outbound_to_green}.inject(:+)
      result[l][:totalridesgreenoutbound]['fridays'] = Rides.where("location = ? AND service = ?", l, 'green').where("extract(isodow from pickup_hour) between 5 and 5").map{|r| r.outbound_to_green}.inject(:+)
      result[l][:totalridesgreenoutbound]['saturdays'] = Rides.where("location = ? AND service = ?", l, 'green').where("extract(isodow from pickup_hour) between 6 and 6").map{|r| r.outbound_to_green}.inject(:+)
      result[l][:totalridesgreenoutbound]['sundays'] = Rides.where("location = ? AND service = ?", l, 'green').where("extract(isodow from pickup_hour) between 7 and 7").map{|r| r.outbound_to_green}.inject(:+)

      result[l][:totalridesyellow] = {}
      result[l][:totalridesyellow]['mondays'] = Rides.where("location = ? AND service = ?", l, 'green').where("extract(isodow from pickup_hour) between 1 and 1").map{|r| r.inbound_from_yellow}.inject(:+)
      result[l][:totalridesyellow]['tuesdays'] = Rides.where("location = ? AND service = ?", l, 'green').where("extract(isodow from pickup_hour) between 2 and 2").map{|r| r.inbound_from_yellow}.inject(:+)
      result[l][:totalridesyellow]['wednesdays'] = Rides.where("location = ? AND service = ?", l, 'green').where("extract(isodow from pickup_hour) between 3 and 3").map{|r| r.inbound_from_yellow}.inject(:+)
      result[l][:totalridesyellow]['thursdays'] = Rides.where("location = ? AND service = ?", l, 'green').where("extract(isodow from pickup_hour) between 4 and 4").map{|r| r.inbound_from_yellow}.inject(:+)
      result[l][:totalridesyellow]['fridays'] = Rides.where("location = ? AND service = ?", l, 'green').where("extract(isodow from pickup_hour) between 5 and 5").map{|r| r.inbound_from_yellow}.inject(:+)
      result[l][:totalridesyellow]['saturdays'] = Rides.where("location = ? AND service = ?", l, 'green').where("extract(isodow from pickup_hour) between 6 and 6").map{|r| r.inbound_from_yellow}.inject(:+)
      result[l][:totalridesyellow]['sundays'] = Rides.where("location = ? AND service = ?", l, 'green').where("extract(isodow from pickup_hour) between 7 and 7").map{|r| r.inbound_from_yellow}.inject(:+)

      result[l][:totalridesyellowoutbound] = {}
      result[l][:totalridesyellowoutbound]['mondays'] = Rides.where("location = ? AND service = ?", l, 'green').where("extract(isodow from pickup_hour) between 1 and 1").map{|r| r.outbound_to_yellow}.inject(:+)
      result[l][:totalridesyellowoutbound]['tuesdays'] = Rides.where("location = ? AND service = ?", l, 'green').where("extract(isodow from pickup_hour) between 2 and 2").map{|r| r.outbound_to_yellow}.inject(:+)
      result[l][:totalridesyellowoutbound]['wednesdays'] = Rides.where("location = ? AND service = ?", l, 'green').where("extract(isodow from pickup_hour) between 3 and 3").map{|r| r.outbound_to_yellow}.inject(:+)
      result[l][:totalridesyellowoutbound]['thursdays'] = Rides.where("location = ? AND service = ?", l, 'green').where("extract(isodow from pickup_hour) between 4 and 4").map{|r| r.outbound_to_yellow}.inject(:+)
      result[l][:totalridesyellowoutbound]['fridays'] = Rides.where("location = ? AND service = ?", l, 'green').where("extract(isodow from pickup_hour) between 5 and 5").map{|r| r.outbound_to_yellow}.inject(:+)
      result[l][:totalridesyellowoutbound]['saturdays'] = Rides.where("location = ? AND service = ?", l, 'green').where("extract(isodow from pickup_hour) between 6 and 6").map{|r| r.outbound_to_yellow}.inject(:+)
      result[l][:totalridesyellowoutbound]['sundays'] = Rides.where("location = ? AND service = ?", l, 'green').where("extract(isodow from pickup_hour) between 7 and 7").map{|r| r.outbound_to_yellow}.inject(:+)

    }

    render json: result
  end


end
