class OutboundRidesController < ApplicationController

    def locations
      locations = Rides.select(:location).distinct
      result = locations.map{|l| l.location}.select{|k| k != 'Rikers Island' && k != 'NV' && k != "Eltingville/Annadale/Prince's Bay" && k != "unknown zone"}.sort
      render json: result

    end

    def total_rides_per_location
      result = {}
      pre_result = {}

      locations = Rides.select(:location).distinct

      locations_parsed = locations.map{|l| l.location}.select{|k| k != 'Rikers Island' && k != 'NV' && k != "Eltingville/Annadale/Prince's Bay" && k != "unknown zone"}

      locations_parsed.each{|l|
      pre_result[l] = Rides.where("location = ? AND service = ?", l, 'green').map{|r| r.outbound_to_green}.inject(:+)
      }

      sorted_array = pre_result.select{|k,v| v }.sort_by{|k,v| v}
      #the select method used above is to weed out locations with nil values, which will break the ensuing sort_by
      sorted_array.each{|pair|
          result[pair[0]] = pair[1]
      }

      render json: result
    end


    def total_distance_per_location
      result = {}
      pre_result = {}

      locations = Rides.select(:location).distinct

      locations_parsed = locations.map{|l| l.location}.select{|k| k != 'Rikers Island' && k != 'NV' && k != "Eltingville/Annadale/Prince's Bay" && k != "unknown zone"}

      locations_parsed.each{|l|
      pre_result[l] = Rides.where("location = ? AND service = ?", l, 'green').map{|r| r.outbound_sum_distance}.inject(:+)
      }

      sorted_array = pre_result.select{|k,v| v }.sort_by{|k,v| v}
      #the select method used above is to weed out locations with nil values, which will break the ensuing sort_by
      sorted_array.each{|pair|
          result[pair[0]] = pair[1]
      }

      render json: result
    end

    def total_fare_per_location
      result = {}
      pre_result = {}

      locations = Rides.select(:location).distinct

      locations_parsed = locations.map{|l| l.location}.select{|k| k != 'Rikers Island' && k != 'NV' && k != "Eltingville/Annadale/Prince's Bay" && k != "unknown zone"}

      locations_parsed.each{|l|
      pre_result[l] = Rides.where("location = ? AND service = ?", l, 'green').map{|r| r.outbound_sum_fare}.inject(:+)
      }

      sorted_array = pre_result.select{|k,v| v }.sort_by{|k,v| v}
      #the select method used above is to weed out locations with nil values, which will break the ensuing sort_by
      sorted_array.each{|pair|
          result[pair[0]] = pair[1]
      }

      render json: result
    end

    def total_fare_per_mile

      pre_totalfares = {}
      pre_totalmiles = {}
      pre_result = {}
      result ={}

      locations = Rides.select(:location).distinct

      locations_parsed = locations.map{|l| l.location}.select{|k| k != 'Rikers Island' && k != 'NV' && k != "Eltingville/Annadale/Prince's Bay" && k != "unknown zone"}

      locations_parsed.each{|l|
      pre_totalfares[l] = Rides.where("location = ? AND service = ?", l, 'green').map{|r| r.outbound_sum_fare}.inject(:+)
      }

      locations_parsed.each{|l|
      pre_totalmiles[l] = Rides.where("location = ? AND service = ?", l, 'green').map{|r| r.outbound_sum_distance}.inject(:+)
      }

      pre_totalfares = pre_totalfares.select{|k,v| v }

      pre_totalmiles = pre_totalmiles.select{|k,v| v }

      pre_totalfares.each{|k,v|
          pre_result[k] = v / pre_totalmiles[k]
        }

      sorted_array = pre_result.sort_by{|k,v| v}
      sorted_array.each{|pair|
          result[pair[0]] = pair[1]
      }

      render json: result
    end

    def total_fare_per_ride
      pre_totalfares = {}
      pre_totalrides = {}
      pre_result = {}
      result = {}

      locations = Rides.select(:location).distinct

      locations_parsed = locations.map{|l| l.location}.select{|k| k != 'Rikers Island' && k != 'NV' && k != "Eltingville/Annadale/Prince's Bay" && k != "unknown zone"}

      locations_parsed.each{|l|
      pre_totalfares[l] = Rides.where("location = ? AND service = ?", l, 'green').map{|r| r.outbound_sum_fare}.inject(:+)
      }

      locations_parsed.each{|l|
      pre_totalrides[l] = Rides.where("location = ? AND service = ?", l, 'green').map{|r| r.outbound_to_green + r.outbound_to_yellow + r.outbound_to_airports + r.outbound_to_ewr + r.outbound_to_unknown}.inject(:+)
      }

      pre_totalfares = pre_totalfares.select{|k,v| v }

      pre_totalrides = pre_totalrides.select{|k,v| v }

      pre_totalfares.each{|k,v|
          pre_result[k] = v / pre_totalrides[k]
        }

      sorted_array = pre_result.sort_by{|k,v| v}
      sorted_array.each{|pair|
          result[pair[0]] = pair[1]
      }

      render json: result

    end

    def bubble_chart_data
      totalfares = {}
      totalrides = {}
      totalmiles = {}
      totalridestoall = {}

      farespermile = {}
      faresperride = {}

      tm_ranking = {}
      tf_ranking = {}
      tr_ranking = {}

      fpm_ranking = {}
      fpr_ranking = {}

      result = {}

      locations = Rides.select(:location).distinct

      locations_parsed = locations.map{|l| l.location}.select{|k| k != 'Rikers Island' && k != 'NV' && k != "Eltingville/Annadale/Prince's Bay" && k != "unknown zone"}.sort

      locations_parsed.each{|l|
      totalmiles[l] = Rides.where("location = ? AND service = ?", l, 'green').map{|r| r.outbound_sum_distance}.inject(:+)
      }

      locations_parsed.each{|l|
      totalfares[l] = Rides.where("location = ? AND service = ?", l, 'green').map{|r| r.outbound_sum_fare}.inject(:+)
      }

      locations_parsed.each{|l|
      totalrides[l] = Rides.where("location = ? AND service = ?", l, 'green').map{|r| r.outbound_to_green}.inject(:+)
      }

      locations_parsed.each{|l|
      totalridestoall[l] = Rides.where("location = ? AND service = ?", l, 'green').map{|r| r.outbound_to_green + r.outbound_to_yellow + r.outbound_to_airports + r.outbound_to_ewr + r.outbound_to_unknown}.inject(:+)
      }

      totalmiles = totalmiles.select{|k,v| v }

      totalfares = totalfares.select{|k,v| v }

      totalrides = totalrides.select{|k,v| v }

      sorted_tm = totalmiles.sort_by{|k,v| v }.reverse
      locations_parsed.each{|l|
        sorted_tm.each{|arr|
          tm_ranking[l] = sorted_tm.index(arr) + 1 if arr[0] == l
        }
      }

      sorted_tf = totalfares.sort_by{|k,v| v }.reverse
      locations_parsed.each{|l|
        sorted_tf.each{|arr|
          tf_ranking[l] = sorted_tf.index(arr) + 1 if arr[0] == l
        }
      }

      sorted_tr = totalrides.sort_by{|k,v| v }.reverse
      locations_parsed.each{|l|
        sorted_tr.each{|arr|
          tr_ranking[l] = sorted_tr.index(arr) + 1 if arr[0] == l
        }
      }

      totalfares.each{|k,v|
        fares = totalfares[k]
        miles = totalmiles[k]
        rides = totalridestoall[k]
        fpm = fares / miles
        fpr = fares / rides
        farespermile[k] = fpm.round(2)
        faresperride[k] = fpr.round(2)
      }

      sorted_fpm = farespermile.sort_by{|k,v| v}.reverse
      locations_parsed.each{|l|
        sorted_fpm.each{|arr|
        fpm_ranking[l] = sorted_fpm.index(arr) + 1 if arr[0] == l
        }
      }

      sorted_fpr = faresperride.sort_by{|k,v| v}.reverse
      locations_parsed.each{|l|
        sorted_fpr.each{|arr|
          fpr_ranking[l] = sorted_fpr.index(arr) + 1 if arr[0] == l
        }
      }


      totalfares.each{|k,v|
          result[k] = {}

          result[k]['totalmiles'] = totalmiles[k]
          result[k]['totalfares'] = totalfares[k]
          result[k]['totalrides'] = totalrides[k]
          result[k]['totalridestoall'] = totalridestoall[k]

          result[k]['fares per mile'] = farespermile[k]
          result[k]['fares per ride'] = faresperride[k]

          result[k]['total miles ranking'] = tm_ranking[k]
          result[k]['total fares ranking'] = tf_ranking[k]
          result[k]['total rides ranking'] = tr_ranking[k]

          result[k]['fares per mile ranking'] = fpm_ranking[k]
          result[k]['fares per ride ranking'] = fpr_ranking[k]


        }

        render json: result
    end


end
