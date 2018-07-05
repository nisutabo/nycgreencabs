class OutboundTimesController < ApplicationController

  def january_days

    result = {}

    januarymondayrides = Rides.where('extract(month from pickup_hour) between 1 and 1').where('extract(isodow from pickup_hour) between 1 and 1').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    januarymondayfares = Rides.where('extract(month from pickup_hour) between 1 and 1').where('extract(isodow from pickup_hour) between 1 and 1').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    januarymondaymiles = Rides.where('extract(month from pickup_hour) between 1 and 1').where('extract(isodow from pickup_hour) between 1 and 1').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    januarytuesdayrides = Rides.where('extract(month from pickup_hour) between 1 and 1').where('extract(isodow from pickup_hour) between 2 and 2').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    januarytuesdayfares = Rides.where('extract(month from pickup_hour) between 1 and 1').where('extract(isodow from pickup_hour) between 2 and 2').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    januarytuesdaymiles = Rides.where('extract(month from pickup_hour) between 1 and 1').where('extract(isodow from pickup_hour) between 2 and 2').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    januarywednesdayrides = Rides.where('extract(month from pickup_hour) between 1 and 1').where('extract(isodow from pickup_hour) between 3 and 3').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    januarywednesdayfares = Rides.where('extract(month from pickup_hour) between 1 and 1').where('extract(isodow from pickup_hour) between 3 and 3').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    januarywednesdaymiles = Rides.where('extract(month from pickup_hour) between 1 and 1').where('extract(isodow from pickup_hour) between 3 and 3').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    januarythursdayrides = Rides.where('extract(month from pickup_hour) between 1 and 1').where('extract(isodow from pickup_hour) between 4 and 4').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    januarythursdayfares = Rides.where('extract(month from pickup_hour) between 1 and 1').where('extract(isodow from pickup_hour) between 4 and 4').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    januarythursdaymiles = Rides.where('extract(month from pickup_hour) between 1 and 1').where('extract(isodow from pickup_hour) between 4 and 4').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    januaryfridayrides = Rides.where('extract(month from pickup_hour) between 1 and 1').where('extract(isodow from pickup_hour) between 5 and 5').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    januaryfridayfares = Rides.where('extract(month from pickup_hour) between 1 and 1').where('extract(isodow from pickup_hour) between 5 and 5').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    januaryfridaymiles = Rides.where('extract(month from pickup_hour) between 1 and 1').where('extract(isodow from pickup_hour) between 5 and 5').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    januarysaturdayrides = Rides.where('extract(month from pickup_hour) between 1 and 1').where('extract(isodow from pickup_hour) between 6 and 6').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    januarysaturdayfares = Rides.where('extract(month from pickup_hour) between 1 and 1').where('extract(isodow from pickup_hour) between 6 and 6').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    januarysaturdaymiles = Rides.where('extract(month from pickup_hour) between 1 and 1').where('extract(isodow from pickup_hour) between 6 and 6').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    januarysundayrides = Rides.where('extract(month from pickup_hour) between 1 and 1').where('extract(isodow from pickup_hour) between 7 and 7').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    januarysundayfares = Rides.where('extract(month from pickup_hour) between 1 and 1').where('extract(isodow from pickup_hour) between 7 and 7').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    januarysundaymiles = Rides.where('extract(month from pickup_hour) between 1 and 1').where('extract(isodow from pickup_hour) between 7 and 7').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)



      result[:january] = {}
      result[:january][:mondays] = {}
      result[:january][:mondays][:totalrides] = januarymondayrides
      result[:january][:mondays][:totalfares] = januarymondayfares
      result[:january][:mondays][:totalmiles] = januarymondaymiles


      result[:january][:tuesdays] = {}
      result[:january][:tuesdays][:totalrides] = januarytuesdayrides
      result[:january][:tuesdays][:totalfares] = januarytuesdayfares
      result[:january][:tuesdays][:totalmiles] = januarytuesdaymiles

      result[:january][:wednesdays] = {}
      result[:january][:wednesdays][:totalrides] = januarywednesdayrides
      result[:january][:wednesdays][:totalfares] = januarywednesdayfares
      result[:january][:wednesdays][:totalmiles] = januarywednesdaymiles

      result[:january][:thursdays] = {}
      result[:january][:thursdays][:totalrides] = januarythursdayrides
      result[:january][:thursdays][:totalfares] = januarythursdayfares
      result[:january][:thursdays][:totalmiles] = januarythursdaymiles

      result[:january][:fridays] = {}
      result[:january][:fridays][:totalrides] = januaryfridayrides
      result[:january][:fridays][:totalfares] = januaryfridayfares
      result[:january][:fridays][:totalmiles] = januaryfridaymiles

      result[:january][:saturdays] = {}
      result[:january][:saturdays][:totalrides] = januarysaturdayrides
      result[:january][:saturdays][:totalfares] = januarysaturdayfares
      result[:january][:saturdays][:totalmiles] = januarysaturdaymiles

      result[:january][:sundays] = {}
      result[:january][:sundays][:totalrides] = januarysundayrides
      result[:january][:sundays][:totalfares] = januarysundayfares
      result[:january][:sundays][:totalmiles] = januarysundaymiles



    render json: result

  end

  def february_days

    result = {}

    februarymondayrides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 1 and 1').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    februarymondayfares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 1 and 1').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    februarymondaymiles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 1 and 1').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)

    februarytuesdayrides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 2 and 2').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    februarytuesdayfares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 2 and 2').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    februarytuesdaymiles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 2 and 2').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)

    februarywednesdayrides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 3 and 3').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    februarywednesdayfares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 3 and 3').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    februarywednesdaymiles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 3 and 3').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    februarythursdayrides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 4 and 4').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    februarythursdayfares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 4 and 4').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    februarythursdaymiles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 4 and 4').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    februaryfridayrides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 5 and 5').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    februaryfridayfares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 5 and 5').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    februaryfridaymiles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 5 and 5').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    februarysaturdayrides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    februarysaturdayfares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    februarysaturdaymiles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 6 and 6').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    februarysundayrides = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 7 and 7').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    februarysundayfares = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 7 and 7').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    februarysundaymiles = Rides.where('extract(month from pickup_hour) between 2 and 2').where('extract(isodow from pickup_hour) between 7 and 7').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)




      result[:february] = {}
      result[:february][:mondays] = {}
      result[:february][:mondays][:totalrides] = februarymondayrides
      result[:february][:mondays][:totalfares] = februarymondayfares
      result[:february][:mondays][:totalmiles] = februarymondaymiles


      result[:february][:tuesdays] = {}
      result[:february][:tuesdays][:totalrides] = februarytuesdayrides
      result[:february][:tuesdays][:totalfares] = februarytuesdayfares
      result[:february][:tuesdays][:totalmiles] = februarytuesdaymiles

      result[:february][:wednesdays] = {}
      result[:february][:wednesdays][:totalrides] = februarywednesdayrides
      result[:february][:wednesdays][:totalfares] = februarywednesdayfares
      result[:february][:wednesdays][:totalmiles] = februarywednesdaymiles

      result[:february][:thursdays] = {}
      result[:february][:thursdays][:totalrides] = februarythursdayrides
      result[:february][:thursdays][:totalfares] = februarythursdayfares
      result[:february][:thursdays][:totalmiles] = februarythursdaymiles

      result[:february][:fridays] = {}
      result[:february][:fridays][:totalrides] = februaryfridayrides
      result[:february][:fridays][:totalfares] = februaryfridayfares
      result[:february][:fridays][:totalmiles] = februaryfridaymiles

      result[:february][:saturdays] = {}
      result[:february][:saturdays][:totalrides] = februarysaturdayrides
      result[:february][:saturdays][:totalfares] = februarysaturdayfares
      result[:february][:saturdays][:totalmiles] = februarysaturdaymiles

      result[:february][:sundays] = {}
      result[:february][:sundays][:totalrides] = februarysundayrides
      result[:february][:sundays][:totalfares] = februarysundayfares
      result[:february][:sundays][:totalmiles] = februarysundaymiles



    render json: result

  end

  def march_days

    result = {}

    marchmondayrides = Rides.where('extract(month from pickup_hour) between 3 and 3').where('extract(isodow from pickup_hour) between 1 and 1').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    marchmondayfares = Rides.where('extract(month from pickup_hour) between 3 and 3').where('extract(isodow from pickup_hour) between 1 and 1').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    marchmondaymiles = Rides.where('extract(month from pickup_hour) between 3 and 3').where('extract(isodow from pickup_hour) between 1 and 1').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)

    marchtuesdayrides = Rides.where('extract(month from pickup_hour) between 3 and 3').where('extract(isodow from pickup_hour) between 2 and 2').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    marchtuesdayfares = Rides.where('extract(month from pickup_hour) between 3 and 3').where('extract(isodow from pickup_hour) between 2 and 2').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    marchtuesdaymiles = Rides.where('extract(month from pickup_hour) between 3 and 3').where('extract(isodow from pickup_hour) between 2 and 2').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)

    marchwednesdayrides = Rides.where('extract(month from pickup_hour) between 3 and 3').where('extract(isodow from pickup_hour) between 3 and 3').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    marchwednesdayfares = Rides.where('extract(month from pickup_hour) between 3 and 3').where('extract(isodow from pickup_hour) between 3 and 3').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    marchwednesdaymiles = Rides.where('extract(month from pickup_hour) between 3 and 3').where('extract(isodow from pickup_hour) between 3 and 3').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    marchthursdayrides = Rides.where('extract(month from pickup_hour) between 3 and 3').where('extract(isodow from pickup_hour) between 4 and 4').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    marchthursdayfares = Rides.where('extract(month from pickup_hour) between 3 and 3').where('extract(isodow from pickup_hour) between 4 and 4').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    marchthursdaymiles = Rides.where('extract(month from pickup_hour) between 3 and 3').where('extract(isodow from pickup_hour) between 4 and 4').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    marchfridayrides = Rides.where('extract(month from pickup_hour) between 3 and 3').where('extract(isodow from pickup_hour) between 5 and 5').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    marchfridayfares = Rides.where('extract(month from pickup_hour) between 3 and 3').where('extract(isodow from pickup_hour) between 5 and 5').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    marchfridaymiles = Rides.where('extract(month from pickup_hour) between 3 and 3').where('extract(isodow from pickup_hour) between 5 and 5').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    marchsaturdayrides = Rides.where('extract(month from pickup_hour) between 3 and 3').where('extract(isodow from pickup_hour) between 6 and 6').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    marchsaturdayfares = Rides.where('extract(month from pickup_hour) between 3 and 3').where('extract(isodow from pickup_hour) between 6 and 6').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    marchsaturdaymiles = Rides.where('extract(month from pickup_hour) between 3 and 3').where('extract(isodow from pickup_hour) between 6 and 6').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    marchsundayrides = Rides.where('extract(month from pickup_hour) between 3 and 3').where('extract(isodow from pickup_hour) between 7 and 7').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    marchsundayfares = Rides.where('extract(month from pickup_hour) between 3 and 3').where('extract(isodow from pickup_hour) between 7 and 7').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    marchsundaymiles = Rides.where('extract(month from pickup_hour) between 3 and 3').where('extract(isodow from pickup_hour) between 7 and 7').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)




      result[:march] = {}
      result[:march][:mondays] = {}
      result[:march][:mondays][:totalrides] = marchmondayrides
      result[:march][:mondays][:totalfares] = marchmondayfares
      result[:march][:mondays][:totalmiles] = marchmondaymiles


      result[:march][:tuesdays] = {}
      result[:march][:tuesdays][:totalrides] = marchtuesdayrides
      result[:march][:tuesdays][:totalfares] = marchtuesdayfares
      result[:march][:tuesdays][:totalmiles] = marchtuesdaymiles

      result[:march][:wednesdays] = {}
      result[:march][:wednesdays][:totalrides] = marchwednesdayrides
      result[:march][:wednesdays][:totalfares] = marchwednesdayfares
      result[:march][:wednesdays][:totalmiles] = marchwednesdaymiles

      result[:march][:thursdays] = {}
      result[:march][:thursdays][:totalrides] = marchthursdayrides
      result[:march][:thursdays][:totalfares] = marchthursdayfares
      result[:march][:thursdays][:totalmiles] = marchthursdaymiles

      result[:march][:fridays] = {}
      result[:march][:fridays][:totalrides] = marchfridayrides
      result[:march][:fridays][:totalfares] = marchfridayfares
      result[:march][:fridays][:totalmiles] = marchfridaymiles

      result[:march][:saturdays] = {}
      result[:march][:saturdays][:totalrides] = marchsaturdayrides
      result[:march][:saturdays][:totalfares] = marchsaturdayfares
      result[:march][:saturdays][:totalmiles] = marchsaturdaymiles

      result[:march][:sundays] = {}
      result[:march][:sundays][:totalrides] = marchsundayrides
      result[:march][:sundays][:totalfares] = marchsundayfares
      result[:march][:sundays][:totalmiles] = marchsundaymiles



    render json: result

  end

  def april_days

    result = {}

    aprilmondayrides = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 1 and 1').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    aprilmondayfares = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 1 and 1').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    aprilmondaymiles = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 1 and 1').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)

    apriltuesdayrides = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 2 and 2').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    apriltuesdayfares = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 2 and 2').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    apriltuesdaymiles = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 2 and 2').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)

    aprilwednesdayrides = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 3 and 3').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    aprilwednesdayfares = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 3 and 3').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    aprilwednesdaymiles = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 3 and 3').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    aprilthursdayrides = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 4 and 4').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    aprilthursdayfares = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 4 and 4').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    aprilthursdaymiles = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 4 and 4').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    aprilfridayrides = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 5 and 5').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    aprilfridayfares = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 5 and 5').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    aprilfridaymiles = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 5 and 5').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    aprilsaturdayrides = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 6 and 6').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    aprilsaturdayfares = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 6 and 6').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    aprilsaturdaymiles = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 6 and 6').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    aprilsundayrides = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 7 and 7').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    aprilsundayfares = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 7 and 7').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    aprilsundaymiles = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 7 and 7').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)




      result[:april] = {}
      result[:april][:mondays] = {}
      result[:april][:mondays][:totalrides] = aprilmondayrides
      result[:april][:mondays][:totalfares] = aprilmondayfares
      result[:april][:mondays][:totalmiles] = aprilmondaymiles


      result[:april][:tuesdays] = {}
      result[:april][:tuesdays][:totalrides] = apriltuesdayrides
      result[:april][:tuesdays][:totalfares] = apriltuesdayfares
      result[:april][:tuesdays][:totalmiles] = apriltuesdaymiles

      result[:april][:wednesdays] = {}
      result[:april][:wednesdays][:totalrides] = aprilwednesdayrides
      result[:april][:wednesdays][:totalfares] = aprilwednesdayfares
      result[:april][:wednesdays][:totalmiles] = aprilwednesdaymiles

      result[:april][:thursdays] = {}
      result[:april][:thursdays][:totalrides] = aprilthursdayrides
      result[:april][:thursdays][:totalfares] = aprilthursdayfares
      result[:april][:thursdays][:totalmiles] = aprilthursdaymiles

      result[:april][:fridays] = {}
      result[:april][:fridays][:totalrides] = aprilfridayrides
      result[:april][:fridays][:totalfares] = aprilfridayfares
      result[:april][:fridays][:totalmiles] = aprilfridaymiles

      result[:april][:saturdays] = {}
      result[:april][:saturdays][:totalrides] = aprilsaturdayrides
      result[:april][:saturdays][:totalfares] = aprilsaturdayfares
      result[:april][:saturdays][:totalmiles] = aprilsaturdaymiles

      result[:april][:sundays] = {}
      result[:april][:sundays][:totalrides] = aprilsundayrides
      result[:april][:sundays][:totalfares] = aprilsundayfares
      result[:april][:sundays][:totalmiles] = aprilsundaymiles



    render json: result

  end

  def april_days

    result = {}

    aprilmondayrides = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 1 and 1').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    aprilmondayfares = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 1 and 1').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    aprilmondaymiles = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 1 and 1').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)

    apriltuesdayrides = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 2 and 2').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    apriltuesdayfares = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 2 and 2').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    apriltuesdaymiles = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 2 and 2').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)

    aprilwednesdayrides = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 3 and 3').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    aprilwednesdayfares = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 3 and 3').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    aprilwednesdaymiles = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 3 and 3').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    aprilthursdayrides = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 4 and 4').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    aprilthursdayfares = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 4 and 4').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    aprilthursdaymiles = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 4 and 4').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    aprilfridayrides = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 5 and 5').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    aprilfridayfares = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 5 and 5').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    aprilfridaymiles = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 5 and 5').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    aprilsaturdayrides = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 6 and 6').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    aprilsaturdayfares = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 6 and 6').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    aprilsaturdaymiles = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 6 and 6').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    aprilsundayrides = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 7 and 7').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    aprilsundayfares = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 7 and 7').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    aprilsundaymiles = Rides.where('extract(month from pickup_hour) between 4 and 4').where('extract(isodow from pickup_hour) between 7 and 7').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)




      result[:april] = {}
      result[:april][:mondays] = {}
      result[:april][:mondays][:totalrides] = aprilmondayrides
      result[:april][:mondays][:totalfares] = aprilmondayfares
      result[:april][:mondays][:totalmiles] = aprilmondaymiles


      result[:april][:tuesdays] = {}
      result[:april][:tuesdays][:totalrides] = apriltuesdayrides
      result[:april][:tuesdays][:totalfares] = apriltuesdayfares
      result[:april][:tuesdays][:totalmiles] = apriltuesdaymiles

      result[:april][:wednesdays] = {}
      result[:april][:wednesdays][:totalrides] = aprilwednesdayrides
      result[:april][:wednesdays][:totalfares] = aprilwednesdayfares
      result[:april][:wednesdays][:totalmiles] = aprilwednesdaymiles

      result[:april][:thursdays] = {}
      result[:april][:thursdays][:totalrides] = aprilthursdayrides
      result[:april][:thursdays][:totalfares] = aprilthursdayfares
      result[:april][:thursdays][:totalmiles] = aprilthursdaymiles

      result[:april][:fridays] = {}
      result[:april][:fridays][:totalrides] = aprilfridayrides
      result[:april][:fridays][:totalfares] = aprilfridayfares
      result[:april][:fridays][:totalmiles] = aprilfridaymiles

      result[:april][:saturdays] = {}
      result[:april][:saturdays][:totalrides] = aprilsaturdayrides
      result[:april][:saturdays][:totalfares] = aprilsaturdayfares
      result[:april][:saturdays][:totalmiles] = aprilsaturdaymiles

      result[:april][:sundays] = {}
      result[:april][:sundays][:totalrides] = aprilsundayrides
      result[:april][:sundays][:totalfares] = aprilsundayfares
      result[:april][:sundays][:totalmiles] = aprilsundaymiles



    render json: result

  end


  def may_days

    result = {}

    maymondayrides = Rides.where('extract(month from pickup_hour) between 5 and 5').where('extract(isodow from pickup_hour) between 1 and 1').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    maymondayfares = Rides.where('extract(month from pickup_hour) between 5 and 5').where('extract(isodow from pickup_hour) between 1 and 1').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    maymondaymiles = Rides.where('extract(month from pickup_hour) between 5 and 5').where('extract(isodow from pickup_hour) between 1 and 1').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)

    maytuesdayrides = Rides.where('extract(month from pickup_hour) between 5 and 5').where('extract(isodow from pickup_hour) between 2 and 2').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    maytuesdayfares = Rides.where('extract(month from pickup_hour) between 5 and 5').where('extract(isodow from pickup_hour) between 2 and 2').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    maytuesdaymiles = Rides.where('extract(month from pickup_hour) between 5 and 5').where('extract(isodow from pickup_hour) between 2 and 2').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)

    maywednesdayrides = Rides.where('extract(month from pickup_hour) between 5 and 5').where('extract(isodow from pickup_hour) between 3 and 3').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    maywednesdayfares = Rides.where('extract(month from pickup_hour) between 5 and 5').where('extract(isodow from pickup_hour) between 3 and 3').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    maywednesdaymiles = Rides.where('extract(month from pickup_hour) between 5 and 5').where('extract(isodow from pickup_hour) between 3 and 3').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    maythursdayrides = Rides.where('extract(month from pickup_hour) between 5 and 5').where('extract(isodow from pickup_hour) between 4 and 4').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    maythursdayfares = Rides.where('extract(month from pickup_hour) between 5 and 5').where('extract(isodow from pickup_hour) between 4 and 4').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    maythursdaymiles = Rides.where('extract(month from pickup_hour) between 5 and 5').where('extract(isodow from pickup_hour) between 4 and 4').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    mayfridayrides = Rides.where('extract(month from pickup_hour) between 5 and 5').where('extract(isodow from pickup_hour) between 5 and 5').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    mayfridayfares = Rides.where('extract(month from pickup_hour) between 5 and 5').where('extract(isodow from pickup_hour) between 5 and 5').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    mayfridaymiles = Rides.where('extract(month from pickup_hour) between 5 and 5').where('extract(isodow from pickup_hour) between 5 and 5').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    maysaturdayrides = Rides.where('extract(month from pickup_hour) between 5 and 5').where('extract(isodow from pickup_hour) between 6 and 6').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    maysaturdayfares = Rides.where('extract(month from pickup_hour) between 5 and 5').where('extract(isodow from pickup_hour) between 6 and 6').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    maysaturdaymiles = Rides.where('extract(month from pickup_hour) between 5 and 5').where('extract(isodow from pickup_hour) between 6 and 6').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    maysundayrides = Rides.where('extract(month from pickup_hour) between 5 and 5').where('extract(isodow from pickup_hour) between 7 and 7').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    maysundayfares = Rides.where('extract(month from pickup_hour) between 5 and 5').where('extract(isodow from pickup_hour) between 7 and 7').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    maysundaymiles = Rides.where('extract(month from pickup_hour) between 5 and 5').where('extract(isodow from pickup_hour) between 7 and 7').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)




      result[:may] = {}
      result[:may][:mondays] = {}
      result[:may][:mondays][:totalrides] = maymondayrides
      result[:may][:mondays][:totalfares] = maymondayfares
      result[:may][:mondays][:totalmiles] = maymondaymiles


      result[:may][:tuesdays] = {}
      result[:may][:tuesdays][:totalrides] = maytuesdayrides
      result[:may][:tuesdays][:totalfares] = maytuesdayfares
      result[:may][:tuesdays][:totalmiles] = maytuesdaymiles

      result[:may][:wednesdays] = {}
      result[:may][:wednesdays][:totalrides] = maywednesdayrides
      result[:may][:wednesdays][:totalfares] = maywednesdayfares
      result[:may][:wednesdays][:totalmiles] = maywednesdaymiles

      result[:may][:thursdays] = {}
      result[:may][:thursdays][:totalrides] = maythursdayrides
      result[:may][:thursdays][:totalfares] = maythursdayfares
      result[:may][:thursdays][:totalmiles] = maythursdaymiles

      result[:may][:fridays] = {}
      result[:may][:fridays][:totalrides] = mayfridayrides
      result[:may][:fridays][:totalfares] = mayfridayfares
      result[:may][:fridays][:totalmiles] = mayfridaymiles

      result[:may][:saturdays] = {}
      result[:may][:saturdays][:totalrides] = maysaturdayrides
      result[:may][:saturdays][:totalfares] = maysaturdayfares
      result[:may][:saturdays][:totalmiles] = maysaturdaymiles

      result[:may][:sundays] = {}
      result[:may][:sundays][:totalrides] = maysundayrides
      result[:may][:sundays][:totalfares] = maysundayfares
      result[:may][:sundays][:totalmiles] = maysundaymiles



    render json: result

  end

  def june_days

    result = {}

    junemondayrides = Rides.where('extract(month from pickup_hour) between 6 and 6').where('extract(isodow from pickup_hour) between 1 and 1').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    junemondayfares = Rides.where('extract(month from pickup_hour) between 6 and 6').where('extract(isodow from pickup_hour) between 1 and 1').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    junemondaymiles = Rides.where('extract(month from pickup_hour) between 6 and 6').where('extract(isodow from pickup_hour) between 1 and 1').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)

    junetuesdayrides = Rides.where('extract(month from pickup_hour) between 6 and 6').where('extract(isodow from pickup_hour) between 2 and 2').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    junetuesdayfares = Rides.where('extract(month from pickup_hour) between 6 and 6').where('extract(isodow from pickup_hour) between 2 and 2').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    junetuesdaymiles = Rides.where('extract(month from pickup_hour) between 6 and 6').where('extract(isodow from pickup_hour) between 2 and 2').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)

    junewednesdayrides = Rides.where('extract(month from pickup_hour) between 6 and 6').where('extract(isodow from pickup_hour) between 3 and 3').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    junewednesdayfares = Rides.where('extract(month from pickup_hour) between 6 and 6').where('extract(isodow from pickup_hour) between 3 and 3').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    junewednesdaymiles = Rides.where('extract(month from pickup_hour) between 6 and 6').where('extract(isodow from pickup_hour) between 3 and 3').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    junethursdayrides = Rides.where('extract(month from pickup_hour) between 6 and 6').where('extract(isodow from pickup_hour) between 4 and 4').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    junethursdayfares = Rides.where('extract(month from pickup_hour) between 6 and 6').where('extract(isodow from pickup_hour) between 4 and 4').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    junethursdaymiles = Rides.where('extract(month from pickup_hour) between 6 and 6').where('extract(isodow from pickup_hour) between 4 and 4').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    junefridayrides = Rides.where('extract(month from pickup_hour) between 6 and 6').where('extract(isodow from pickup_hour) between 5 and 5').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    junefridayfares = Rides.where('extract(month from pickup_hour) between 6 and 6').where('extract(isodow from pickup_hour) between 5 and 5').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    junefridaymiles = Rides.where('extract(month from pickup_hour) between 6 and 6').where('extract(isodow from pickup_hour) between 5 and 5').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    junesaturdayrides = Rides.where('extract(month from pickup_hour) between 6 and 6').where('extract(isodow from pickup_hour) between 6 and 6').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    junesaturdayfares = Rides.where('extract(month from pickup_hour) between 6 and 6').where('extract(isodow from pickup_hour) between 6 and 6').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    junesaturdaymiles = Rides.where('extract(month from pickup_hour) between 6 and 6').where('extract(isodow from pickup_hour) between 6 and 6').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    junesundayrides = Rides.where('extract(month from pickup_hour) between 6 and 6').where('extract(isodow from pickup_hour) between 7 and 7').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    junesundayfares = Rides.where('extract(month from pickup_hour) between 6 and 6').where('extract(isodow from pickup_hour) between 7 and 7').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    junesundaymiles = Rides.where('extract(month from pickup_hour) between 6 and 6').where('extract(isodow from pickup_hour) between 7 and 7').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)




      result[:june] = {}
      result[:june][:mondays] = {}
      result[:june][:mondays][:totalrides] = junemondayrides
      result[:june][:mondays][:totalfares] = junemondayfares
      result[:june][:mondays][:totalmiles] = junemondaymiles


      result[:june][:tuesdays] = {}
      result[:june][:tuesdays][:totalrides] = junetuesdayrides
      result[:june][:tuesdays][:totalfares] = junetuesdayfares
      result[:june][:tuesdays][:totalmiles] = junetuesdaymiles

      result[:june][:wednesdays] = {}
      result[:june][:wednesdays][:totalrides] = junewednesdayrides
      result[:june][:wednesdays][:totalfares] = junewednesdayfares
      result[:june][:wednesdays][:totalmiles] = junewednesdaymiles

      result[:june][:thursdays] = {}
      result[:june][:thursdays][:totalrides] = junethursdayrides
      result[:june][:thursdays][:totalfares] = junethursdayfares
      result[:june][:thursdays][:totalmiles] = junethursdaymiles

      result[:june][:fridays] = {}
      result[:june][:fridays][:totalrides] = junefridayrides
      result[:june][:fridays][:totalfares] = junefridayfares
      result[:june][:fridays][:totalmiles] = junefridaymiles

      result[:june][:saturdays] = {}
      result[:june][:saturdays][:totalrides] = junesaturdayrides
      result[:june][:saturdays][:totalfares] = junesaturdayfares
      result[:june][:saturdays][:totalmiles] = junesaturdaymiles

      result[:june][:sundays] = {}
      result[:june][:sundays][:totalrides] = junesundayrides
      result[:june][:sundays][:totalfares] = junesundayfares
      result[:june][:sundays][:totalmiles] = junesundaymiles



    render json: result

  end



  def total_rides_per_day

    result = {}


    mondayrides = Rides.where('extract(isodow from pickup_hour) between 1 and 1').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    mondayfares = Rides.where('extract(isodow from pickup_hour) between 1 and 1').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)

    tuesdayrides = Rides.where('extract(isodow from pickup_hour) between 2 and 2').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    tuesdayfares = Rides.where('extract(isodow from pickup_hour) between 2 and 2').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)

    wednesdayrides = Rides.where('extract(isodow from pickup_hour) between 3 and 3').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    wednesdayfares = Rides.where('extract(isodow from pickup_hour) between 3 and 3').where("service = ?",'green').map{|r| r.outbound_sum_fare}.inject(:+)

    thursdayrides = Rides.where('extract(isodow from pickup_hour) between 4 and 4').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    thursdayfares = Rides.where('extract(isodow from pickup_hour) between 4 and 4').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)

    fridayrides = Rides.where('extract(isodow from pickup_hour) between 5 and 5').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    fridayfares = Rides.where('extract(isodow from pickup_hour) between 5 and 5').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)

    saturdayrides = Rides.where('extract(isodow from pickup_hour) between 6 and 6').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    saturdayfares = Rides.where('extract(isodow from pickup_hour) between 6 and 6').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)

    sundayrides = Rides.where('extract(isodow from pickup_hour) between 7 and 7').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    sundayfares = Rides.where('extract(isodow from pickup_hour) between 7 and 7').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)


    result[:monday] = [mondayrides, mondayfares]
    result[:tuesday] = [tuesdayrides, tuesdayfares]
    result[:wednesday] = [wednesdayrides, wednesdayfares]
    result[:thursday] = [thursdayrides, thursdayfares]
    result[:friday] = [fridayrides, fridayfares]
    result[:saturday] = [saturdayrides, saturdayfares]
    result[:sunday] = [sundayrides, sundayfares]



    render json: result

  end


  def total_rides_per_month
    result = {}


    januaryrides = Rides.where('extract(month from pickup_hour) between 1 and 1').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    januaryfares = Rides.where('extract(month from pickup_hour) between 1 and 1').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    januarymiles = Rides.where('extract(month from pickup_hour) between 1 and 1').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    februaryrides = Rides.where('extract(month from pickup_hour) between 2 and 2').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    februaryfares = Rides.where('extract(month from pickup_hour) between 2 and 2').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    februarymiles = Rides.where('extract(month from pickup_hour) between 2 and 2').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    marchrides = Rides.where('extract(month from pickup_hour) between 3 and 3').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    marchfares = Rides.where('extract(month from pickup_hour) between 3 and 3').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    marchmiles = Rides.where('extract(month from pickup_hour) between 3 and 3').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    aprilrides = Rides.where('extract(month from pickup_hour) between 4 and 4').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    aprilfares = Rides.where('extract(month from pickup_hour) between 4 and 4').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    aprilmiles = Rides.where('extract(month from pickup_hour) between 4 and 4').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    mayrides = Rides.where('extract(month from pickup_hour) between 5 and 5').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    mayfares = Rides.where('extract(month from pickup_hour) between 5 and 5').where("service = ?", 'green').map{|r| r.outbound_sum_fare}.inject(:+)
    maymiles = Rides.where('extract(month from pickup_hour) between 5 and 5').where("service = ?", 'green').map{|r| r.outbound_sum_distance}.inject(:+)


    junerides = Rides.where('extract(month from pickup_hour) between 6 and 6').where("service = ?", 'green').map{|r| r.outbound_to_green}.inject(:+)
    junefares = Rides.where('extract(month from pickup_hour) between 6 and 6').where("service = ?",  'green').map{|r| r.outbound_sum_fare}.inject(:+)
    junemiles = Rides.where('extract(month from pickup_hour) between 6 and 6').where("service = ?",  'green').map{|r| r.outbound_sum_distance}.inject(:+)



    result[:january] = [januaryrides, januaryfares, januarymiles]
    result[:february] = [februaryrides, februaryfares, februarymiles]
    result[:march] = [marchrides, marchfares, marchmiles]
    result[:april] = [aprilrides, aprilfares, aprilmiles]
    result[:may] = [mayrides, mayfares, maymiles]
    result[:june] = [junerides, junefares, junemiles]


    render json: result

  end


end
