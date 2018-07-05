class CreateOutboundRidesFromYellows < ActiveRecord::Migration[5.2]
  def change
    create_table :outbound_rides_from_yellows do |t|

      t.timestamps
    end
  end
end
