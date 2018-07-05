class Rides < ActiveRecord::Base
  establish_connection :greencab_db
  self.table_name = "location_aggregates"
end
