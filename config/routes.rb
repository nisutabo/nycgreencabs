Rails.application.routes.draw do
  # resources :outbound_hours_to_yellowss
  # resources :outbound_times_to_yellows
  # resources :outbound_rides_from_yellows
  # resources :outbound_hours
  # resources :outbound_times
  #resources :outbound_rides
  # resources :locations
  # resources :yellow_hours
  # resources :yellow_times
  # resources :rides_from_yellows
  # resources :hours
  # resources :checks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get '/locationsoutbound', to: 'outbound_rides#locations'
  get '/totalridesoutbound', to: 'outbound_rides#total_rides_per_location'
  get '/totaldistancesoutbound', to: 'outbound_rides#total_distance_per_location'
  get '/totalfaresoutbound', to: 'outbound_rides#total_fare_per_location'
  get '/totalfarepermileoutbound', to: 'outbound_rides#total_fare_per_mile'
  get '/totalfareperrideoutbound', to: 'outbound_rides#total_fare_per_ride'
  get '/bubblechartdataoutbound', to: 'outbound_rides#bubble_chart_data'

  get '/locations', to: 'rides#locations'
  get '/totalrides', to: 'rides#total_rides_per_location'
  get '/totaldistances', to: 'rides#total_distance_per_location'
  get '/totalfares', to: 'rides#total_fare_per_location'
  get '/totalfarepermile', to: 'rides#total_fare_per_mile'
  get '/totalfareperride', to: 'rides#total_fare_per_ride'
  get '/bubblechartdata', to: 'rides#bubble_chart_data'

  get '/locationsyellow', to: 'rides_from_yellows#locations'
  get '/totalridesyellow', to: 'rides_from_yellows#total_rides_per_location'
  get '/totaldistancesyellow', to: 'rides_from_yellows#total_distance_per_location'
  get '/totalfaresyellow', to: 'rides_from_yellows#total_fare_per_location'
  get '/totalfarepermileyellow', to: 'rides_from_yellows#total_fare_per_mile'
  get '/totalfareperrideyellow', to: 'rides_from_yellows#total_fare_per_ride'
  get '/bubblechartdatayellow', to: 'rides_from_yellows#bubble_chart_data'

  get '/locationstoyellow', to: 'outbound_rides_to_yellows#locations'
  get '/totalridestoyellow', to: 'outbound_rides_to_yellows#total_rides_per_location'
  get '/totaldistancestoyellow', to: 'outbound_rides_to_yellows#total_distance_per_location'
  get '/totalfarestoyellow', to: 'outbound_rides_to_yellows#total_fare_per_location'
  get '/totalfarepermiletoyellow', to: 'outbound_rides_to_yellows#total_fare_per_mile'
  get '/totalfareperridetoyellow', to: 'outbound_rides_to_yellows#total_fare_per_ride'
  get '/bubblechartdatatoyellow', to: 'outbound_rides_to_yellows#bubble_chart_data'


  get '/totalpermonth', to: 'times#total_rides_per_month'
  get '/totalperday', to: 'times#total_rides_per_day'
  get '/januarydays', to: 'times#january_days'
  get '/februarydays', to: 'times#february_days'
  get '/marchdays', to: 'times#march_days'
  get '/aprildays', to: 'times#april_days'
  get '/maydays', to: 'times#may_days'
  get '/junedays', to: 'times#june_days'

  get '/totalpermonthoutbound', to: 'outbound_times#total_rides_per_month'
  get '/totalperdayoutbound', to: 'outbound_times#total_rides_per_day'
  get '/januarydaysoutbound', to: 'outbound_times#january_days'
  get '/februarydaysoutbound', to: 'outbound_times#february_days'
  get '/marchdaysoutbound', to: 'outbound_times#march_days'
  get '/aprildaysoutbound', to: 'outbound_times#april_days'
  get '/maydaysoutbound', to: 'outbound_times#may_days'
  get '/junedaysoutbound', to: 'outbound_times#june_days'

  get '/totalpermonthoutboundtoyellow', to: 'outbound_times_to_yellows#total_rides_per_month'
  get '/totalperdayoutboundtoyellow', to: 'outbound_times_to_yellows#total_rides_per_day'
  get '/januarydaysoutboundtoyellow', to: 'outbound_times_to_yellows#january_days'
  get '/februarydaysoutboundtoyellow', to: 'outbound_times_to_yellows#february_days'
  get '/marchdaysoutboundtoyellow', to: 'outbound_times_to_yellows#march_days'
  get '/aprildaysoutboundtoyellow', to: 'outbound_times_to_yellows#april_days'
  get '/maydaysoutboundtoyellow', to: 'outbound_times_to_yellows#may_days'
  get '/junedaysoutboundtoyellow', to: 'outbound_times_to_yellows#june_days'


  get '/totalpermonthyellow', to: 'yellow_times#total_rides_per_month'
  get '/totalperdayyellow', to: 'yellow_times#total_rides_per_day'
  get '/januarydaysyellow', to: 'yellow_times#january_days'
  get '/februarydaysyellow', to: 'yellow_times#february_days'
  get '/marchdaysyellow', to: 'yellow_times#march_days'
  get '/aprildaysyellow', to: 'yellow_times#april_days'
  get '/maydaysyellow', to: 'yellow_times#may_days'
  get '/junedaysyellow', to: 'yellow_times#june_days'


  get '/marchfridays', to: 'hours#marchfridays'
  get '/marchsaturdays', to: 'hours#marchsaturdays'
  get '/marchsundays', to: 'hours#marchsundays'
  get '/marchmondays', to: 'hours#marchmondays'
  get '/marchtuesdays', to: 'hours#marchtuesdays'
  get '/marchwednesdays', to: 'hours#marchwednesdays'
  get '/marchthursdays', to: 'hours#marchthursdays'


  get '/aprilfridays', to: 'hours#aprilfridays'
  get '/aprilsaturdays', to: 'hours#aprilsaturdays'
  get '/aprilsundays', to: 'hours#aprilsundays'
  get '/aprilmondays', to: 'hours#aprilmondays'
  get '/apriltuesdays', to: 'hours#apriltuesdays'
  get '/aprilwednesdays', to: 'hours#aprilwednesdays'
  get '/aprilthursdays', to: 'hours#aprilthursdays'

  get '/mayfridays', to: 'hours#mayfridays'
  get '/maysaturdays', to: 'hours#maysaturdays'
  get '/maysundays', to: 'hours#maysundays'
  get '/maymondays', to: 'hours#maymondays'
  get '/maytuesdays', to: 'hours#maytuesdays'
  get '/maywednesdays', to: 'hours#maywednesdays'
  get '/maythursdays', to: 'hours#maythursdays'

  get '/junefridays', to: 'hours#junefridays'
  get '/junesaturdays', to: 'hours#junesaturdays'
  get '/junesundays', to: 'hours#junesundays'
  get '/junemondays', to: 'hours#junemondays'
  get '/junetuesdays', to: 'hours#junetuesdays'
  get '/junewednesdays', to: 'hours#junewednesdays'
  get '/junethursdays', to: 'hours#junethursdays'

  get '/januaryfridays', to: 'hours#januaryfridays'
  get '/januarysaturdays', to: 'hours#januarysaturdays'
  get '/januarysundays', to: 'hours#januarysundays'
  get '/januarymondays', to: 'hours#januarymondays'
  get '/januarytuesdays', to: 'hours#januarytuesdays'
  get '/januarywednesdays', to: 'hours#januarywednesdays'
  get '/januarythursdays', to: 'hours#januarythursdays'

  get '/februaryfridays', to: 'hours#februaryfridays'
  get '/februarysaturdays', to: 'hours#februarysaturdays'
  get '/februarysundays', to: 'hours#februarysundays'
  get '/februarymondays', to: 'hours#februarymondays'
  get '/februarytuesdays', to: 'hours#februarytuesdays'
  get '/februarywednesdays', to: 'hours#februarywednesdays'
  get '/februarythursdays', to: 'hours#februarythursdays'




  get '/marchfridaysoutbound', to: 'outbound_hours#marchfridays'
  get '/marchsaturdaysoutbound', to: 'outbound_hours#marchsaturdays'
  get '/marchsundaysoutbound', to: 'outbound_hours#marchsundays'
  get '/marchmondaysoutbound', to: 'outbound_hours#marchmondays'
  get '/marchtuesdaysoutbound', to: 'outbound_hours#marchtuesdays'
  get '/marchwednesdaysoutbound', to: 'outbound_hours#marchwednesdays'
  get '/marchthursdaysoutbound', to: 'outbound_hours#marchthursdays'


  get '/aprilfridaysoutbound', to: 'outbound_hours#aprilfridays'
  get '/aprilsaturdaysoutbound', to: 'outbound_hours#aprilsaturdays'
  get '/aprilsundaysoutbound', to: 'outbound_hours#aprilsundays'
  get '/aprilmondaysoutbound', to: 'outbound_hours#aprilmondays'
  get '/apriltuesdaysoutbound', to: 'outbound_hours#apriltuesdays'
  get '/aprilwednesdaysoutbound', to: 'outbound_hours#aprilwednesdays'
  get '/aprilthursdaysoutbound', to: 'outbound_hours#aprilthursdays'

  get '/mayfridaysoutbound', to: 'outbound_hours#mayfridays'
  get '/maysaturdaysoutbound', to: 'outbound_hours#maysaturdays'
  get '/maysundaysoutbound', to: 'outbound_hours#maysundays'
  get '/maymondaysoutbound', to: 'outbound_hours#maymondays'
  get '/maytuesdaysoutbound', to: 'outbound_hours#maytuesdays'
  get '/maywednesdaysoutbound', to: 'outbound_hours#maywednesdays'
  get '/maythursdaysoutbound', to: 'outbound_hours#maythursdays'

  get '/junefridaysoutbound', to: 'outbound_hours#junefridays'
  get '/junesaturdaysoutbound', to: 'outbound_hours#junesaturdays'
  get '/junesundaysoutbound', to: 'outbound_hours#junesundays'
  get '/junemondaysoutbound', to: 'outbound_hours#junemondays'
  get '/junetuesdaysoutbound', to: 'outbound_hours#junetuesdays'
  get '/junewednesdaysoutbound', to: 'outbound_hours#junewednesdays'
  get '/junethursdaysoutbound', to: 'outbound_hours#junethursdays'

  get '/januaryfridaysoutbound', to: 'outbound_hours#januaryfridays'
  get '/januarysaturdaysoutbound', to: 'outbound_hours#januarysaturdays'
  get '/januarysundaysoutbound', to: 'outbound_hours#januarysundays'
  get '/januarymondaysoutbound', to: 'outbound_hours#januarymondays'
  get '/januarytuesdaysoutbound', to: 'outbound_hours#januarytuesdays'
  get '/januarywednesdaysoutbound', to: 'outbound_hours#januarywednesdays'
  get '/januarythursdaysoutbound', to: 'outbound_hours#januarythursdays'

  get '/februaryfridaysoutbound', to: 'outbound_hours#februaryfridays'
  get '/februarysaturdaysoutbound', to: 'outbound_hours#februarysaturdays'
  get '/februarysundaysoutbound', to: 'outbound_hours#februarysundays'
  get '/februarymondaysoutbound', to: 'outbound_hours#februarymondays'
  get '/februarytuesdaysoutbound', to: 'outbound_hours#februarytuesdays'
  get '/februarywednesdaysoutbound', to: 'outbound_hours#februarywednesdays'
  get '/februarythursdaysoutbound', to: 'outbound_hours#februarythursdays'



  get '/aprilfridaysoutboundtoyellow', to: 'outbound_hours_to_yellows#aprilfridays'
  get '/aprilsaturdaysoutboundtoyellow', to: 'outbound_hours_to_yellows#aprilsaturdays'
  get '/aprilsundaysoutboundtoyellow', to: 'outbound_hours_to_yellows#aprilsundays'
  get '/aprilmondaysoutboundtoyellow', to: 'outbound_hours_to_yellows#aprilmondays'
  get '/apriltuesdaysoutboundtoyellow', to: 'outbound_hours_to_yellows#apriltuesdays'
  get '/aprilwednesdaysoutboundtoyellow', to: 'outbound_hours_to_yellows#aprilwednesdays'
  get '/aprilthursdaysoutboundtoyellow', to: 'outbound_hours_to_yellows#aprilthursdays'

  get '/mayfridaysoutboundtoyellow', to: 'outbound_hours_to_yellows#mayfridays'
  get '/maysaturdaysoutboundtoyellow', to: 'outbound_hours_to_yellows#maysaturdays'
  get '/maysundaysoutboundtoyellow', to: 'outbound_hours_to_yellows#maysundays'
  get '/maymondaysoutboundtoyellow', to: 'outbound_hours_to_yellows#maymondays'
  get '/maytuesdaysoutboundtoyellow', to: 'outbound_hours_to_yellows#maytuesdays'
  get '/maywednesdaysoutboundtoyellow', to: 'outbound_hours_to_yellows#maywednesdays'
  get '/maythursdaysoutboundtoyellow', to: 'outbound_hours_to_yellows#maythursdays'

  get '/junefridaysoutboundtoyellow', to: 'outbound_hours_to_yellows#junefridays'
  get '/junesaturdaysoutboundtoyellow', to: 'outbound_hours_to_yellows#junesaturdays'
  get '/junesundaysoutboundtoyellow', to: 'outbound_hours_to_yellows#junesundays'
  get '/junemondaysoutboundtoyellow', to: 'outbound_hours_to_yellows#junemondays'
  get '/junetuesdaysoutboundtoyellow', to: 'outbound_hours_to_yellows#junetuesdays'
  get '/junewednesdaysoutboundtoyellow', to: 'outbound_hours_to_yellows#junewednesdays'
  get '/junethursdaysoutboundtoyellow', to: 'outbound_hours_to_yellows#junethursdays'

  get '/januaryfridaysoutboundtoyellow', to: 'outbound_hours_to_yellows#januaryfridays'
  get '/januarysaturdaysoutboundtoyellow', to: 'outbound_hours_to_yellows#januarysaturdays'
  get '/januarysundaysoutboundtoyellow', to: 'outbound_hours_to_yellows#januarysundays'
  get '/januarymondaysoutboundtoyellow', to: 'outbound_hours_to_yellows#januarymondays'
  get '/januarytuesdaysoutboundtoyellow', to: 'outbound_hours_to_yellows#januarytuesdays'
  get '/januarywednesdaysoutboundtoyellow', to: 'outbound_hours_to_yellows#januarywednesdays'
  get '/januarythursdaysoutboundtoyellow', to: 'outbound_hours_to_yellows#januarythursdays'

  get '/februaryfridaysoutboundtoyellow', to: 'outbound_hours_to_yellows#februaryfridays'
  get '/februarysaturdaysoutboundtoyellow', to: 'outbound_hours_to_yellows#februarysaturdays'
  get '/februarysundaysoutboundtoyellow', to: 'outbound_hours_to_yellows#februarysundays'
  get '/februarymondaysoutboundtoyellow', to: 'outbound_hours_to_yellows#februarymondays'
  get '/februarytuesdaysoutboundtoyellow', to: 'outbound_hours_to_yellows#februarytuesdays'
  get '/februarywednesdaysoutboundtoyellow', to: 'outbound_hours_to_yellows#februarywednesdays'
  get '/februarythursdaysoutboundtoyellow', to: 'outbound_hours_to_yellows#februarythursdays'

  get '/marchfridaysoutboundtoyellow', to: 'outbound_hours_to_yellows#marchfridays'
  get '/marchsaturdaysoutboundtoyellow', to: 'outbound_hours_to_yellows#marchsaturdays'
  get '/marchsundaysoutboundtoyellow', to: 'outbound_hours_to_yellows#marchsundays'
  get '/marchmondaysoutboundtoyellow', to: 'outbound_hours_to_yellows#marchmondays'
  get '/marchtuesdaysoutboundtoyellow', to: 'outbound_hours_to_yellows#marchtuesdays'
  get '/marchwednesdaysoutboundtoyellow', to: 'outbound_hours_to_yellows#marchwednesdays'
  get '/marchthursdaysoutboundtoyellow', to: 'outbound_hours_to_yellows#marchthursdays'



    get '/marchfridaysyellow', to: 'yellow_hours#marchfridays'
    get '/marchsaturdaysyellow', to: 'yellow_hours#marchsaturdays'
    get '/marchsundaysyellow', to: 'yellow_hours#marchsundays'
    get '/marchmondaysyellow', to: 'yellow_hours#marchmondays'
    get '/marchtuesdaysyellow', to: 'yellow_hours#marchtuesdays'
    get '/marchwednesdaysyellow', to: 'yellow_hours#marchwednesdays'
    get '/marchthursdaysyellow', to: 'yellow_hours#marchthursdays'


    get '/aprilfridaysyellow', to: 'yellow_hours#aprilfridays'
    get '/aprilsaturdaysyellow', to: 'yellow_hours#aprilsaturdays'
    get '/aprilsundaysyellow', to: 'yellow_hours#aprilsundays'
    get '/aprilmondaysyellow', to: 'yellow_hours#aprilmondays'
    get '/apriltuesdaysyellow', to: 'yellow_hours#apriltuesdays'
    get '/aprilwednesdaysyellow', to: 'yellow_hours#aprilwednesdays'
    get '/aprilthursdaysyellow', to: 'yellow_hours#aprilthursdays'

    get '/mayfridaysyellow', to: 'yellow_hours#mayfridays'
    get '/maysaturdaysyellow', to: 'yellow_hours#maysaturdays'
    get '/maysundaysyellow', to: 'yellow_hours#maysundays'
    get '/maymondaysyellow', to: 'yellow_hours#maymondays'
    get '/maytuesdaysyellow', to: 'yellow_hours#maytuesdays'
    get '/maywednesdaysyellow', to: 'yellow_hours#maywednesdays'
    get '/maythursdaysyellow', to: 'yellow_hours#maythursdays'

    get '/junefridaysyellow', to: 'yellow_hours#junefridays'
    get '/junesaturdaysyellow', to: 'yellow_hours#junesaturdays'
    get '/junesundaysyellow', to: 'yellow_hours#junesundays'
    get '/junemondaysyellow', to: 'yellow_hours#junemondays'
    get '/junetuesdaysyellow', to: 'yellow_hours#junetuesdays'
    get '/junewednesdaysyellow', to: 'yellow_hours#junewednesdays'
    get '/junethursdaysyellow', to: 'yellow_hours#junethursdays'

    get '/januaryfridaysyellow', to: 'yellow_hours#januaryfridays'
    get '/januarysaturdaysyellow', to: 'yellow_hours#januarysaturdays'
    get '/januarysundaysyellow', to: 'yellow_hours#januarysundays'
    get '/januarymondaysyellow', to: 'yellow_hours#januarymondays'
    get '/januarytuesdaysyellow', to: 'yellow_hours#januarytuesdays'
    get '/januarywednesdaysyellow', to: 'yellow_hours#januarywednesdays'
    get '/januarythursdaysyellow', to: 'yellow_hours#januarythursdays'

    get '/februaryfridaysyellow', to: 'yellow_hours#februaryfridays'
    get '/februarysaturdaysyellow', to: 'yellow_hours#februarysaturdays'
    get '/februarysundaysyellow', to: 'yellow_hours#februarysundays'
    get '/februarymondaysyellow', to: 'yellow_hours#februarymondays'
    get '/februarytuesdaysyellow', to: 'yellow_hours#februarytuesdays'
    get '/februarywednesdaysyellow', to: 'yellow_hours#februarywednesdays'
    get '/februarythursdaysyellow', to: 'yellow_hours#februarythursdays'


    get '/locationdata', to: 'locations#location_data'



end
